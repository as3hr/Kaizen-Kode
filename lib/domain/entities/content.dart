import 'package:image_picker/image_picker.dart';

class Content {
  String text;
  XFile? image;
  Content({required this.text, this.image});

  copyWith({
    String? text,
    XFile? image,
  }) =>
      Content(
        text: text ?? this.text,
        image: image ?? this.image,
      );
}
