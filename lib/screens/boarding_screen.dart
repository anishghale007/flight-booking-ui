import 'package:barcode/barcode.dart';
import 'package:barcode_widget/barcode_widget.dart';
import 'package:flight_booking_ui/constants.dart';
import 'package:flight_booking_ui/widgets/ticket_info.dart';
import 'package:flight_booking_ui/widgets/ticket_line.dart';
import 'package:flutter/material.dart';

class BoardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: RadialGradient(
          colors: [Color(0xFFc3f4a6), Color(0xFF0067FF)],
          center: Alignment.topRight,
          radius: 0.6,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              Icons.arrow_left,
              color: Colors.white,
              size: 50,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
            child: Column(
              children: [
                Center(
                  child: Text(
                    'Boarding Pass',
                    style: kSubHeadingTextStyle,
                  ),
                ),
                SizedBox(height: 50),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xff3785f4), Color(0xffc3f4a6)],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                    ),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 30, top: 50, bottom: 40),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    RichText(
                                      text: TextSpan(
                                        children: [
                                          WidgetSpan(
                                            child: Transform.rotate(
                                              angle: 1.6,
                                              child: Icon(
                                                Icons.airplanemode_active,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                          WidgetSpan(
                                            child: SizedBox(
                                              width: 20,
                                            ),
                                          ),
                                          TextSpan(
                                            text: "PC979",
                                            style: TextStyle(
                                              color: Colors.grey[300],
                                              fontSize: 16,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 20),
                                Text(
                                  'ODS',
                                  style: kHeadingTextStyle,
                                ),
                                Text(
                                  'Odessa, Ukraine',
                                  style: TextStyle(
                                      color: Colors.grey[300], fontSize: 15),
                                ),
                                SizedBox(height: 20),
                                Text(
                                  'CDG',
                                  style: kHeadingTextStyle,
                                ),
                                Text(
                                  'Paris, France',
                                  style: TextStyle(
                                      color: Colors.grey[300], fontSize: 15),
                                ),
                              ],
                            ),
                          ),
                          Spacer(),
                          RotatedBox(
                            quarterTurns: 3,
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: BarcodeWidget(
                                barcode: Barcode.code128(),
                                data: 'Anish Ghale',
                                drawText: false,
                                width: 220,
                                height: 50,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      TicketLine(),
                      TicketInfo(
                        time: '10:15 AM',
                        date: 'Fri, 24 Dec',
                        gateNo: 'B4',
                        gate: 'Gate',
                        seatNo: '21A',
                        seat: 'Seat',
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 50),
                Text(
                  'Download Ticket',
                  style: TextStyle(
                      color: kSecondaryColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
