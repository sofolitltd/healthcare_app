import 'package:flutter/material.dart';

class ScheduleScreen extends StatefulWidget{
  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {

 int _buttonIndex= 0;
 final _scheduleWidgets = [
  // UpcomingSchedule(),
   Center(child: Text('Upcoming'),),
   Center(child: Text('Completed'),),
   Center(child: Text('Canceled'),),
   //UpcomingSchedule(),

 ];
  @override
  Widget build(BuildContext context) {
   return SingleChildScrollView(
     child: Padding(
       padding: EdgeInsets.only(top: 40),
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Padding(padding: EdgeInsets.symmetric(horizontal: 15),
           child: Text(
             'Schedule',
             style: TextStyle(
               fontSize: 32,
               fontWeight: FontWeight.w500,
             ),
           ),),
           SizedBox(height: 20,),
           Container(
             padding: EdgeInsets.all(5),
             margin: EdgeInsets.symmetric(horizontal: 10),
             decoration: BoxDecoration(
               color: Color(0xFFF4F6FA),
               borderRadius: BorderRadius.circular(10),
             ),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 InkWell(
                   onTap: (){
                     setState(() {
                       _buttonIndex = 0;
                     });
                   },
                   child: Container(
                     padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(10),
                       color: _buttonIndex == 0? Color(0xFF7165D6):Colors.transparent
                     ),
                     child: Text('Upcoming',
                     style: TextStyle(
                       fontSize: 16,
                       fontWeight: FontWeight.w500
                     ),),
                   ),
                 ),
                 InkWell(
                   onTap: (){
                     setState(() {
                       _buttonIndex = 1;
                     });
                   },
                   child: Container(
                     padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(10),
                         color: _buttonIndex == 1? Color(0xFF7165D6):Colors.transparent
                     ),
                     child: Text('Completed',
                     style: TextStyle(
                       fontSize: 16,
                       fontWeight: FontWeight.w500
                     ),),
                   ),
                 ),
                 InkWell(
                   onTap: (){
                     setState(() {
                       _buttonIndex = 2;
                     });
                   },
                   child: Container(
                     padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(10),
                         color: _buttonIndex == 2? Color(0xFF7165D6):Colors.transparent
                     ),
                     child: Text('Canceled',
                     style: TextStyle(
                       fontSize: 16,
                       fontWeight: FontWeight.w500
                     ),),
                   ),
                 ),
               ],
             ),
           ),
           SizedBox(height: 30,),
           _scheduleWidgets[_buttonIndex],
         ],
       ),
     ),
   );
  }
}