// ignore_for_file: file_names, prefer_const_constructors, dead_code, prefer_function_declarations_over_variables, prefer_const_declarations

import 'package:flutter/material.dart';

import 'package:like_button/like_button.dart';

class MyStatelessWidget extends StatefulWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  State<MyStatelessWidget> createState() => _MyStatelessWidgetState();
}

class _MyStatelessWidgetState extends State<MyStatelessWidget> {
  bool isliked = false;
  int likeCount = 17;
  final double size = 40;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: LikeButton(
          size: size,
          isLiked: isliked,
          likeCount: likeCount,
          likeBuilder: (isLiked) {
            final color = Colors.grey;
            return Icon(
              Icons.favorite,
              color: color,
              size: size,
            );
          },
        ),
      ),
    );
  }
}
