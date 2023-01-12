import 'package:flight_booking_ui/routes/routes_manager.dart';
import 'package:flight_booking_ui/widgets/form_button.dart';
import 'package:flight_booking_ui/widgets/form_heading.dart';
import 'package:flight_booking_ui/widgets/form_text.dart';
import 'package:flight_booking_ui/widgets/listView_items.dart';
import 'package:flight_booking_ui/widgets/primary_button.dart';
import 'package:flutter/material.dart';

class BookingForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 180, left: 20, right: 20),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(40),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 30),
              child: SizedBox(
                height: 40.0,
                width: 700,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: [
                    ListViewItems(
                        text: 'Round trip', icon: Icons.compare_arrows),
                    ListViewItems(text: 'One way', icon: Icons.arrow_forward),
                    ListViewItems(
                        text: 'Multiple', icon: Icons.subdirectory_arrow_left),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FormHeading(headingText: "From"),
                  SizedBox(height: 15),
                  FormText(text: 'Odessa (ODS)'),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          child: Divider(
                            color: Colors.grey,
                            height: 36,
                          ),
                        ),
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.grey[200],
                        child: Transform.rotate(
                          angle: 1.6,
                          child: Icon(
                            Icons.compare_arrows,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: Divider(
                            color: Colors.grey,
                            height: 36,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  FormHeading(headingText: "To"),
                  SizedBox(height: 15),
                  FormText(text: 'Paris, all airports'),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FormHeading(headingText: "Depart"),
                      Icon(
                        Icons.calendar_month_rounded,
                        color: Colors.black,
                        size: 20,
                      ),
                      FormHeading(headingText: "Arrive"),
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FormText(text: '21, Aug 2022'),
                      FormText(text: '29, Aug 2022'),
                    ],
                  ),
                  SizedBox(height: 30),
                  FormHeading(headingText: "Travellers"),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      FormButton(icon: Icons.remove, status: "Active"),
                      FormText(text: '2 Adults'),
                      FormButton(icon: Icons.add, status: "Active"),
                      SizedBox(width: 20),
                      FormButton(icon: Icons.remove, status: "Inactive"),
                      Text(
                        'o Child',
                        style: TextStyle(
                            color: Colors.grey[200],
                            fontWeight: FontWeight.w600,
                            fontSize: 17),
                      ),
                      FormButton(icon: Icons.add, status: "Inactive"),
                    ],
                  ),
                  SizedBox(height: 30),
                  PrimaryButton(
                    buttonText: 'Search Flights',
                    onPressed: () {
                      Navigator.pushNamed(context, Routes.boardingPageRoute);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
