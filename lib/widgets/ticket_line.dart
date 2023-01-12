import 'package:flight_booking_ui/constants.dart';
import 'package:flutter/material.dart';

class TicketLine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Row(
        children: [
          SizedBox(
            height: 40,
            width: 30,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: kMainThemeColor,
                border: Border.all(width: 0, color: kMainThemeColor),
                borderRadius: BorderRadius.only(
                  topRight: Radius.elliptical(400.2, 334.4),
                  bottomRight: Radius.elliptical(443.2, 334.4),
                ),
              ),
            ),
          ),
          Expanded(
            child: Flex(
              direction: Axis.horizontal,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                30,
                    (index) => SizedBox(
                  height: 1,
                  width: 5,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: kMainThemeColor,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 40,
            width: 30,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: kMainThemeColor,
                border: Border.all(width: 0, color: kMainThemeColor),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.elliptical(400.2, 334.4),
                  bottomLeft: Radius.elliptical(443.2, 334.4),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
