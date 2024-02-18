import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:healthcare_app/screens/home_screen.dart';
import 'package:healthcare_app/screens/messages.dart';
import 'package:healthcare_app/screens/schedules.dart';
import 'package:healthcare_app/screens/settings.dart';

class NavBarRoots extends StatefulWidget{
  @override
  State<NavBarRoots> createState() => _NavBarRootsState();
}

class _NavBarRootsState extends State<NavBarRoots> {

 int _selectedIndex = 0;
 final _screens = [
   //home screen
   HomeScreen(),
   //message screen
   Messages(),
   //schedule screen
  ScheduleScreen(),
   //setting
   SettingsScreen(),
 ];
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: Colors. white,
     body: _screens[_selectedIndex],
     bottomNavigationBar: Container(
       height: 80,
       child: BottomNavigationBar(
         backgroundColor: Colors.white,
         type: BottomNavigationBarType.fixed,
selectedItemColor: Color(0xFF7165D6),
         unselectedItemColor: Colors.black26,
         selectedLabelStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
         currentIndex: _selectedIndex,
         onTap: (index){
           setState(() {
             _selectedIndex = index;
           });
         },
         items: [
           BottomNavigationBarItem(icon: Icon(Icons.home_filled),label: "Home"),
           BottomNavigationBarItem(icon: Icon(CupertinoIcons.chat_bubble_text_fill),label: "Messages"),
           BottomNavigationBarItem(icon: Icon(Icons.calendar_month),label: "Schedule"),
           BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Settings"),
         ],

       ),
     ),
   );
  }
}