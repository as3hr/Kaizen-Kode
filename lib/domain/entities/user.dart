class User {
  String image;
  String name;
  String message;
  String time;

  User({
    required this.image,
    required this.message,
    required this.name,
    required this.time,
  });

  copyWith({String? image, String? name, String? message, String? time}) =>
      User(
        image: image ?? this.image,
        message: message ?? this.message,
        name: name ?? this.name,
        time: time ?? this.time,
      );

  factory User.empty() => User(image: '', message: '', name: '', time: '');
}
