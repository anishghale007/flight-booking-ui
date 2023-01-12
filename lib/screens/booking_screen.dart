import 'package:flight_booking_ui/constants.dart';
import 'package:flight_booking_ui/widgets/booking_form.dart';
import 'package:flight_booking_ui/widgets/bottom_NavigationBar.dart';
import 'package:flutter/material.dart';

class BookingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: kMainThemeColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 30, top: 50, bottom: 100),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Book ',
                              style: kSubHeadingTextStyle.copyWith(
                                  color: kSecondaryColor),
                            ),
                            TextSpan(
                              text: 'Your',
                              style: kSubHeadingTextStyle,
                            ),
                          ],
                        ),
                      ),
                      Text(
                        'Next Flight',
                        style: kSubHeadingTextStyle,
                      ),
                    ],
                  ),
                ),
              ),
              BookingForm(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}
