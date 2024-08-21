import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kaizen_code/domain/repositories/post_repository.dart';
import 'package:kaizen_code/features/create/create_navigator.dart';
import 'package:kaizen_code/helpers/helpers.dart';
import 'package:kaizen_code/domain/entities/post.dart';

import 'create_state.dart';

class CreateCubit extends Cubit<CreateState> {
  final CreateNavigator navigation;
  final PostRepository postRepository;
  CreateCubit(this.navigation, this.postRepository)
      : super(CreateState.empty());
  final picker = ImagePicker();

  void createPost(BuildContext context) {
    if (state.post.topics.isEmpty) {
      showToast('No Topic Selected!', context);
    } else {}
    postRepository.createPost(state.post);
    emit(state.copyWith(post: state.post));
    navigation.pop();
  }

  void changePostType(PostType postType) {
    emit(state.copyWith(post: state.post.copyWith(postType: postType)));
  }

  Future<void> getImageFromCamera() async {
    final file = await getImage(ImageSource.camera);
    if (file != null) {
      emit(state.copyWith(
          post: state.post.copyWith(
              content: state.post.content.copyWith(
        image: file,
      ))));
    }
  }

  Future<void> getImageFromGallery() async {
    final file = await getImage(ImageSource.gallery);
    if (file != null) {
      emit(state.copyWith(
          post: state.post.copyWith(
              content: state.post.content.copyWith(
        image: file,
      ))));
    }
  }

  Future<XFile?> getImage(ImageSource source) async {
    final file = await picker.pickImage(source: source);
    if (file != null) {
      return file;
    }
    return null;
  }

  void removeImage() {
    emit(state.copyWith(
        post: state.post.copyWith(
            content: state.post.content.copyWith(
      image: XFile(''),
    ))));
  }
}
