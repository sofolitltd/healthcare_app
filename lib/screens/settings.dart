import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return SingleChildScrollView(
     child: Padding(padding: EdgeInsets.only(
       top: 50,
       left: 20,
       right: 20,
     ),
     child: Column(
       crossAxisAlignment: CrossAxisAlignment.start,
       children: [
         const Text('Settings',
         style: TextStyle(
           fontSize: 30,
           fontWeight: FontWeight.w500
         ),),
         const SizedBox( height: 30,),
         ListTile(
           leading: CircleAvatar(
             radius: 30,
             backgroundImage: AssetImage('assets/images/doctor 4.jpg'),
           ),
           title: Text('Dr. Doctor Name',
           style: TextStyle(
             fontWeight: FontWeight.w500,
             fontSize: 25
           ),),
           subtitle: Text('Profile'),
         ),
         Divider(height: 50,),
         ListTile(
           onTap: (){},
           leading: Container(
             padding: EdgeInsets.all(10),
             decoration: BoxDecoration(
               color: Colors.blue.shade100,
               shape: BoxShape.circle,
             ),
             child: Icon(CupertinoIcons.person,
             color: Colors.blue,
             size: 35,
             ),
           ),
           title: Text('Profile',
           style: TextStyle(
             fontSize: 20,
             fontWeight: FontWeight.w500
           ),),
           trailing: Icon(Icons.arrow_back_ios_new_rounded),
         ),
         SizedBox(height: 20,),
         ListTile(
           onTap: (){},
           leading: Container(
             padding: EdgeInsets.all(10),
             decoration: BoxDecoration(
               color: Colors.indigo.shade100,
               shape: BoxShape.circle,
             ),
             child: Icon(Icons.notifications_none_outlined,
               color: Colors.blue,
               size: 35,
             ),
           ),
           title: Text('Notifications',
             style: TextStyle(
                 fontSize: 20,
                 fontWeight: FontWeight.w500
             ),),
           trailing: Icon(Icons.arrow_back_ios_new_rounded),
         ),
         SizedBox(height: 20,),
         ListTile(
           onTap: (){},
           leading: Container(
             padding: EdgeInsets.all(10),
             decoration: BoxDecoration(
               color: Colors.deepPurple.shade100,
               shape: BoxShape.circle,
             ),
             child: Icon(Icons.privacy_tip_outlined,
               color: Colors.deepPurple,
               size: 35,
             ),
           ),
           title: Text('Privacy',
             style: TextStyle(
                 fontSize: 20,
                 fontWeight: FontWeight.w500
             ),),
           trailing: Icon(Icons.arrow_back_ios_new_rounded),
         ),
         SizedBox(height: 20,),
         ListTile(
           onTap: (){},
           leading: Container(
             padding: EdgeInsets.all(10),
             decoration: BoxDecoration(
               color: Colors.green.shade100,
               shape: BoxShape.circle,
             ),
             child: Icon(Icons.settings_suggest_outlined,
               color: Colors.green,
               size: 35,
             ),
           ),
           title: Text('General',
             style: TextStyle(
                 fontSize: 20,
                 fontWeight: FontWeight.w500
             ),),
           trailing: Icon(Icons.arrow_back_ios_new_rounded),
         ),
         SizedBox(height: 20,),
         ListTile(
           onTap: (){},
           leading: Container(
             padding: EdgeInsets.all(10),
             decoration: BoxDecoration(
               color: Colors.orange.shade100,
               shape: BoxShape.circle,
             ),
             child: Icon(Icons.info_outline_rounded,
               color: Colors.orange,
               size: 35,
             ),
           ),
           title: Text('About Us',
             style: TextStyle(
                 fontSize: 20,
                 fontWeight: FontWeight.w500
             ),),
           trailing: Icon(Icons.arrow_back_ios_new_rounded),
         ),
         Divider(height: 40,),
         ListTile(
           onTap: (){},
           leading: Container(
             padding: EdgeInsets.all(10),
             decoration: BoxDecoration(
               color: Colors.redAccent.shade100,
               shape: BoxShape.circle,
             ),
             child: Icon(Icons.logout_outlined,
               color: Colors.redAccent,
               size: 35,
             ),
           ),
           title: Text('Log Out',
             style: TextStyle(
                 fontSize: 20,
                 fontWeight: FontWeight.w500
             ),),
           trailing: Icon(Icons.arrow_back_ios_new_rounded),
         ),
       ],
     ),),
   );
  }

}