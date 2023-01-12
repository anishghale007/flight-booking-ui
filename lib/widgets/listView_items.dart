import 'package:flight_booking_ui/constants.dart';
import 'package:flutter/material.dart';

class ListViewItems extends StatelessWidget {
  final String text;
  final IconData icon;

  ListViewItems({required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10,
      width: 120,
      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        color: text == "Round trip" ? kSecondaryColor : Colors.grey[200],
        borderRadius: BorderRadius.circular(40),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 15,
                child: Icon(
                  icon,
                  color: Colors.black,
                ),
              ),
              Text(
                text,
                style: TextStyle(fontWeight: FontWeight.w500),
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
