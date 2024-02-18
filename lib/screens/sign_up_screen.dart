import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:healthcare_app/screens/home_screen.dart';
import 'package:healthcare_app/screens/login_screen.dart';

class SignupScreen extends StatefulWidget{
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool passToggle = true;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 10,),
              Padding(padding: const EdgeInsets.all(20),
              child: Image.asset('assets/images/group.jpg'),),
              const SizedBox(height: 16,),
              const Padding(padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Full Name',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person),
                ),
              ),),
              const SizedBox(height: 16,),
              const Padding(padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Email Address',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email),
                ),
              ),),
              const SizedBox(height: 16,),
              Padding(padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: TextField(
                obscureText: passToggle?true: false,
                decoration: InputDecoration(
                  labelText: 'Phone Number',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.phone),
                ),
              ),),
              SizedBox(height: 16,),
              Padding(padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: TextField(
                obscureText: passToggle?true: false,
                decoration: InputDecoration(
                  labelText: 'Email Password',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: InkWell(onTap: (){
                    if (passToggle == true) {
                      passToggle = false;
                    } else {
                      passToggle = true;
                    }
                    setState(() {});
                  },
                      child: passToggle
                          ? const Icon(CupertinoIcons.eye_slash_fill)
                          : const Icon(CupertinoIcons.eye_fill)),)
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                child: Material(
                  color: const Color(0xFF7165D6),
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomeScreen()));
                    },
                    child: const Padding(
                      padding:
                      EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                      child: Center(
                        child: Text(
                          'Create Account',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already have an account?",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black54),),
                  TextButton(onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context)
                            => LoginScreen()
                        ));
                  },
                      child: const Text('Log in', style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold,
                          color: Color(0xFF7165D6)),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}