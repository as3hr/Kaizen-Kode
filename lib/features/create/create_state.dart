import 'package:kaizen_code/domain/entities/content.dart';
import 'package:kaizen_code/domain/entities/post.dart';

class CreateState {
  final Post post;
  List<String> selectedTopic;
  CreateState({required this.post, this.selectedTopic = const ['Tech']});

  copyWith({Post? post, List<String>? selectedTopic}) => CreateState(
        post: post ?? this.post,
        selectedTopic: selectedTopic ?? this.selectedTopic,
      );

  factory CreateState.empty() => CreateState(
        post: Post(
          authorName: 'James',
          topics: [],
          date: '',
          content: Content(text: ''),
        ),
        selectedTopic: ['Tech'],
      );
}
