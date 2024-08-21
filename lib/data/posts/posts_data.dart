import '../../domain/entities/content.dart';
import '../../domain/entities/post.dart';

class PostsData {
  final posts = [
    Post(
        content: Content(
            text:
                'Climate change is a pressing issue affecting our planet. This post explores the latest scientific findings, the impact on various ecosystems, and potential solutions to mitigate its effects. Join the conversation and learn how you can contribute to a sustainable future.'),
        authorName: 'James',
        topics: ['Climate'],
        date: '1 hour ago'),
    Post(
        content: Content(
            text:
                'Maintaining a healthy lifestyle is essential for overall well-being. This post provides practical tips on nutrition, exercise, stress management, and sleep hygiene. Discover how to improve your physical and mental health through simple lifestyle changes.'),
        authorName: 'Sarah',
        topics: ['Health'],
        date: '1 month ago'),
    Post(
        content: Content(
            text:
                'Embark on a visual journey through stunning landscapes captured during a recent hiking adventure. This post showcases breathtaking scenery, wildlife encounters, and the tranquility of nature. Get inspired to explore the great outdoors and connect with the natural world.'),
        authorName: 'John',
        topics: ['Travel'],
        date: '2 days ago'),
    Post(
        content: Content(
            text:
                'Indulge your taste buds with a delicious and nutritious vegan meal. This post shares a simple yet flavorful recipe that is perfect for busy weeknights or special occasions. Learn how to create plant-based dishes that are both satisfying and sustainable.'),
        authorName: 'Emily',
        topics: ['Food'],
        date: '3 hours ago'),
    Post(
        content: Content(
            text:
                'Stay updated on the latest technological advancements shaping our world. This post discusses emerging trends in artificial intelligence, virtual reality, and sustainable technology. Explore the potential impact of these innovations on various industries and society as a whole.'),
        authorName: 'David',
        topics: ['Tech'],
        date: '1 week ago'),
    Post(
        content: Content(
            text:
                'Achieving quality sleep is crucial for optimal health and well-being. This post offers practical tips and strategies to improve your sleep patterns, such as creating a relaxing bedtime routine, optimizing your sleep environment, and managing stress effectively. Prioritize sleep for a healthier and happier you.'),
        authorName: 'Olivia',
        topics: ['Health'],
        date: '4 hours ago')
  ];
}
