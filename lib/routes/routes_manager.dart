import 'package:flight_booking_ui/screens/boarding_screen.dart';
import 'package:flight_booking_ui/screens/booking_screen.dart';
import 'package:flight_booking_ui/screens/main_screen.dart';
import 'package:flutter/material.dart';

class Routes {
  static const mainPageRoute = "/";
  static const bookingPageRoute = "/bookingPage";
  static const boardingPageRoute = "/boardingPage";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.mainPageRoute:
        return MaterialPageRoute(builder: (_) => MainScreen());
      case Routes.bookingPageRoute:
        return MaterialPageRoute(builder: (_) => BookingScreen());
      case Routes.boardingPageRoute:
        return MaterialPageRoute(builder: (_) => BoardingScreen());
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: Text("No Routes Found"),
        ),
        body: Center(
          child: Text("No Routes Found"),
        ),
      ),
    );
  }
}
