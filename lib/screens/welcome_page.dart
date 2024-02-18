import 'package:flutter/material.dart';
import 'package:healthcare_app/screens/sign_up_screen.dart';

import 'login_screen.dart';

class WelcomeScreen extends StatelessWidget{
  const WelcomeScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child:Container(
        width:MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            SizedBox(height: 15,),
            Align(alignment: Alignment.centerRight, child: TextButton(onPressed: ()
            {
             // Navigator.push(context, MaterialPageRoute(builder: (context)=> );
              },
              child: const Text('Skip', style: TextStyle(color: Color(0xFF7165D6), fontSize: 20),),
              

            ),
            ),
            const SizedBox(height: 50,),
            Padding(padding: const EdgeInsets.all(20),
            child: Image.asset('assets/images/group.jpg'),),
            const SizedBox(height: 50,),
            const Text('Doctors Appointment',
            style: TextStyle(
              color: Color(0xFF7165D6),
              fontSize: 35,
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
              wordSpacing: 2
            ),),
            const SizedBox(height: 10,),
            const Text('Appoint Your Doctor',
            style: TextStyle(
              color: Colors.black54,
              fontSize: 16,
              fontWeight: FontWeight.w500,
              letterSpacing: 1,
              wordSpacing: 2
            ),
            ),
            const SizedBox(height:60,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Material(
                  color: const Color(0xFF7165D6),
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreen ()) );
                    },
                    child: const Padding(padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                    child: Text('Log In', style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold
                    ),),),
                  ),
                ),
                Material(
                  color: const Color(0xFF7165D6),
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const SignupScreen()));
                    },
                    child: const Padding(padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                    child: Text('Sign Up', style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold
                    ),),),
                  ),
                ),
              ],
            )

          ],
        ),
      )
    );
  }
}