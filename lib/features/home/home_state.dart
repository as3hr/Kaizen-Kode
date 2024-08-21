import 'package:kaizen_code/domain/entities/post.dart';

class HomeState {
  List<Post> postList;
  int bottomSheetIndex;
  HomeState({
    this.bottomSheetIndex = 0,
    required this.postList,
  });

  copyWith({List<Post>? postList, int? bottomSheetIndex}) => HomeState(
      postList: postList ?? this.postList,
      bottomSheetIndex: bottomSheetIndex ?? this.bottomSheetIndex);

  factory HomeState.empty() => HomeState(postList: [], bottomSheetIndex: 0);
}
