import 'content.dart';

enum PostType {
  public,
  business,
}

class Post {
  String authorName;
  List<String> topics;
  String date;
  PostType postType;
  Content content;

  Post({
    this.postType = PostType.public,
    required this.content,
    required this.authorName,
    required this.topics,
    required this.date,
  });
  copyWith({
    PostType? postType,
    Content? content,
    String? authorName,
    List<String>? topicName,
    String? date,
  }) =>
      Post(
        postType: postType ?? this.postType,
        content: content ?? this.content,
        authorName: authorName ?? this.authorName,
        topics: topicName ?? topics,
        date: date ?? this.date,
      );
}
