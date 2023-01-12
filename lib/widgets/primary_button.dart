import 'package:flight_booking_ui/constants.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String buttonText;
  VoidCallback onPressed;
  final IconData? icon;

  PrimaryButton({required this.buttonText, required this.onPressed, this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: MediaQuery.of(context).size.width * 0.9,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: kSecondaryColor,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: icon == null
            ? Text(
          buttonText,
          style: kButtonTextStyle,
          textAlign: TextAlign.center,
        )
            : Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(),
            Text(
              buttonText,
              style: kButtonTextStyle,
              textAlign: TextAlign.center,
            ),
            Transform.rotate(
              angle: 1.6,
              child: Icon(
                icon,
                size: 25,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
