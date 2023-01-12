import 'package:flutter/material.dart';

class TicketInfo extends StatelessWidget {
  final String time;
  final String date;
  final String gateNo;
  final String gate;
  final String seat;
  final String seatNo;

  TicketInfo({
    required this.time,
    required this.date,
    required this.gateNo,
    required this.gate,
    required this.seatNo,
    required this.seat,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TicketHeading(heading: time),
                  SizedBox(height: 10),
                  TicketSubHeading(subHeading: date),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TicketHeading(heading: gateNo),
                  SizedBox(height: 10),
                  TicketSubHeading(subHeading: gate),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TicketHeading(heading: seatNo),
                  SizedBox(height: 10),
                  TicketSubHeading(subHeading: seat),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class TicketHeading extends StatelessWidget {
  final String heading;

  TicketHeading({required this.heading});

  @override
  Widget build(BuildContext context) {
    return Text(
      heading,
      style: TextStyle(
        fontSize: 16,
        color: Colors.white,
        fontWeight: FontWeight.w900,
      ),
    );
  }
}

class TicketSubHeading extends StatelessWidget {
  final String subHeading;

  TicketSubHeading({required this.subHeading});

  @override
  Widget build(BuildContext context) {
    return Text(
      subHeading,
      style: TextStyle(
        fontSize: 15,
        color: Colors.white,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
