import 'package:flight_booking_ui/constants.dart';
import 'package:flight_booking_ui/routes/routes_manager.dart';
import 'package:flight_booking_ui/widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: RadialGradient(
          colors: [Color(0xffc3f4a6), Color(0xff0067ff)],
          center: Alignment.topLeft,
          radius: 0.9,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: ListView(
            children: [
              SizedBox(height: 10.h),
              Container(
                height: 30.h,
                width: 85.h,
                child: Center(
                  child: Image.asset('assets/images/airplane.png'),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 60, vertical: 60),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Easy Way',
                            style: kHeadingTextStyle.copyWith(
                                color: kSecondaryColor),
                          ),
                          TextSpan(
                              text: ' to Your Next Destination',
                              style: kHeadingTextStyle),
                        ],
                      ),
                    ),
                    SizedBox(height: 50),
                    PrimaryButton(
                      buttonText: "Let\'s Fly",
                      icon: Icons.airplanemode_active,
                      onPressed: () {
                        Navigator.pushNamed(context, Routes.bookingPageRoute);
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
