import 'package:flutter/material.dart';

class FormHeading extends StatelessWidget {

  final String headingText;

  FormHeading({required this.headingText});

  @override
  Widget build(BuildContext context) {
    return Text(
      headingText,
      style: TextStyle(
          color: Colors.grey[400], fontWeight: FontWeight.w500, fontSize: 15),
    );
  }
}
