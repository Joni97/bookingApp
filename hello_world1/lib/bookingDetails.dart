import 'package:flutter/material.dart';
import 'package:hello_world1/dashboard.dart';
import 'package:hello_world1/menuDrawer.dart';

class BookingdetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Bookings"),
      ),
      drawer: MenuDrawer(),
      
    );
  }
}
