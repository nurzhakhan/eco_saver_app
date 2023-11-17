import 'package:eco_saver_app/air_card_screen.dart';
import 'package:eco_saver_app/calendar_screen.dart';
import 'package:eco_saver_app/create_new_list_screen.dart';
import 'package:eco_saver_app/events_list_screen.dart';
import 'package:eco_saver_app/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  static final List<AppBar> _appWidgetOptions = <AppBar>[
    AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: Container(
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/logo.svg', width: 99, height: 21,),
            Expanded(child: // Note: Same code is applied for the TextFormField as well
            Container(
              padding: EdgeInsets.all(8),
              height: 50,
              alignment: Alignment.center,
              child: TextField(
                decoration: InputDecoration(
                  suffixIcon: SvgPicture.asset('assets/filter_icon.svg'),
                  hintText: 'Іздеу ...',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.grey),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  contentPadding: EdgeInsets.all(8.0),
                  // Customize the hint text style here
                  hintStyle: TextStyle(
                    fontSize: 18,  // Adjust the font size as needed
                    color: Colors.grey,  // Change the text color if desired
                  ),
                  alignLabelWithHint: true,
                ),
              ),
            ),),
          ],
        ),
      ),
    ),
    AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: Container(
          child: Text('Оқиғалар Күнтізбесі', style: TextStyle(color: Color.fromRGBO(152, 191, 94, 1), fontSize: 20),)
      ),
    ),
    AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: Container(
          child: Text('Жаңа жарияланым', style: TextStyle(color: Color.fromRGBO(152, 191, 94, 1), fontSize: 20),)
      ),
    ),AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: Container(
          child: Text('Жарияланым тізімі', style: TextStyle(color: Color.fromRGBO(152, 191, 94, 1), fontSize: 20),)
      ),
    ),AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: Container(
          child: Text('Профиль', style: TextStyle(color: Color.fromRGBO(152, 191, 94, 1), fontSize: 20),)
      ),
    ),


  ];

  static const List<Widget> _bodyWidgetOptions = <Widget>[
    AirCardScreen(),
    CalendarScreen(),
    CreateNewListScreen(),
    EventsListScreen(),
    ProfileScreen(),
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appWidgetOptions.elementAt(_selectedIndex),
      body: Container(
        child: _bodyWidgetOptions.elementAt(_selectedIndex),
    ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: '',),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_month_rounded), label: '',),
          BottomNavigationBarItem(icon: Icon(Icons.add_box_outlined), label: '',),
          BottomNavigationBarItem(icon: Icon(Icons.list_alt_rounded), label: '',),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline_outlined), label: '',),
        ],
        currentIndex: _selectedIndex,
          unselectedItemColor:  Color.fromRGBO(114, 114, 114, 1),
        selectedItemColor: Color.fromRGBO(152, 191, 94, 1),
        onTap: _onItemTap,
      ),
    );
  }
}
