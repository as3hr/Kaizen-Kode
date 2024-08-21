import '../entities/post.dart';

abstract class PostRepository {
  List<Post> getPosts();

  List<Post> createPost(Post post);
}
