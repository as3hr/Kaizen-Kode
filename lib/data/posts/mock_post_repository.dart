import 'package:kaizen_code/data/posts/posts_data.dart';
import 'package:kaizen_code/domain/repositories/post_repository.dart';
import 'package:kaizen_code/domain/entities/post.dart';

class MockPostRepository implements PostRepository {
  final PostsData postsData;
  MockPostRepository(this.postsData);

  @override
  List<Post> getPosts() {
    return postsData.posts;
  }

  @override
  List<Post> createPost(Post post) {
    postsData.posts.add(post);
    return postsData.posts;
  }
}
