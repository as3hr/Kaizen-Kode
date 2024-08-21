import 'package:kaizen_code/domain/entities/content.dart';
import 'package:kaizen_code/domain/entities/post.dart';

class CreateState {
  final Post post;
  CreateState({required this.post});

  copyWith({Post? post, bool? togglePostType}) => CreateState(
        post: post ?? this.post,
      );

  factory CreateState.empty() => CreateState(
        post: Post(
          authorName: 'James',
          topics: [],
          date: '',
          content: Content(text: ''),
        ),
      );
}
