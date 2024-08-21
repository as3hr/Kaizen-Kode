import 'package:kaizen_code/domain/repositories/post_repository.dart';
import 'package:kaizen_code/features/home/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/entities/post.dart';

class HomeCubit extends Cubit<HomeState> {
  final PostRepository postRepository;
  HomeCubit(this.postRepository) : super(HomeState.empty());

  onInit() {
    final posts = postRepository.getPosts();
    emit(state.copyWith(postList: posts));
  }

  void createPost(Post post) {
    state.postList.insert(0, post);
    emit(state.copyWith(postList: state.postList));
  }
}
