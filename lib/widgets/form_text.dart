import 'package:flight_booking_ui/constants.dart';
import 'package:flutter/material.dart';

class FormText extends StatelessWidget {
  final String text;

  FormText({required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: TextOverflow.ellipsis,
      style: kFormTextStyle,
    );
  }
}
