// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:happy_delivery/utils/app_colors.dart';

class TextFieldWidget extends StatelessWidget {
  final String text;
  const TextFieldWidget({
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 15),
        decoration: BoxDecoration(
            color: AppColors.redColor, borderRadius: BorderRadius.circular(14)),
        child: Center(
            child: Text(
          text,
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        )));
  }
}
