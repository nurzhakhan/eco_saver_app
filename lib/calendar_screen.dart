import 'package:flutter/material.dart';

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({Key? key}) : super(key: key);

  @override
  State<CalendarScreen> createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              child: Image.asset('assets/calendar.png')),
          Expanded(child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset('assets/events.png'),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
