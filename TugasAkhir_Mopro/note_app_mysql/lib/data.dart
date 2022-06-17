// ignore_for_file: unnecessary_const, use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';

class ChatTile extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String text;

  ChatTile({
      required this.imageUrl,
      required this.name,
      required this.text,
      });

TextStyle tittleTextStyle = const TextStyle(
  color: Color(0xff2c3a59),
  fontWeight: FontWeight.w500,
  fontSize: 16,
);

TextStyle subtitleTextStyle = const TextStyle(
  color: const Color(0xff808ba2),
  fontWeight: FontWeight.w300,
  fontSize: 16,
);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Row(
        children: [
          CircleAvatar(
            radius: 40.0,
            backgroundColor: Colors.transparent,
            backgroundImage:
            AssetImage(
              imageUrl,
          ),
          
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: tittleTextStyle,
              ),
              Text(
                text, style: subtitleTextStyle, 
              )
            ],
          ),
        ],
      ),
    );
  }
}