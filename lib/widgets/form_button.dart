import 'package:flutter/material.dart';

class FormButton extends StatelessWidget {

  final IconData icon;
  final String status;

  FormButton({required this.icon, required this.status});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: 20,
      decoration: BoxDecoration(
        color: status == "Active" ? Colors.grey[200] : Colors.grey[100],
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        children: [
          Icon(
            icon,
            size: 20,
            color: status == "Active" ? Colors.black : Colors.grey,
          )
        ],
      ),
    );
  }
}
