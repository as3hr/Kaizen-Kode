import 'package:flutter/material.dart';

import 'other_message.dart';
import 'my_message.dart';

class ChatMessages extends StatelessWidget {
  const ChatMessages({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
            reverse: true,
            itemCount: 20,
            itemBuilder: (context, index) {
              return index.isEven ? const MyMessage() : const OtherMessage();
            }));
  }
}
