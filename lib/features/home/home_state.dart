import 'package:kaizen_code/domain/entities/post.dart';

class HomeState {
  List<Post> postList;
  HomeState({
    required this.postList,
  });

  copyWith({List<Post>? postList}) =>
      HomeState(postList: postList ?? this.postList);

  factory HomeState.empty() => HomeState(postList: []);
}
