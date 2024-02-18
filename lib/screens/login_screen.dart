import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:healthcare_app/screens/home_screen.dart';
import 'package:healthcare_app/screens/sign_up_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool passToggle = true;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Image.asset('assets/images/group.jpg'),
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.all(12),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text('Enter Username'),
                      prefixIcon: Icon(Icons.person)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: TextField(
                    obscureText: passToggle ? true : false,
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      label: const Text('Enter Password'),
                      prefixIcon: const Icon(Icons.lock),
                      suffixIcon: InkWell(
                          onTap: () {
                            if (passToggle == true) {
                              passToggle = false;
                            } else {
                              passToggle = true;
                            }
                            setState(() {});
                          },
                          child: passToggle
                              ? const Icon(CupertinoIcons.eye_slash_fill)
                              : const Icon(CupertinoIcons.eye_fill)),
                    )),
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
                          'Log In',
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
              const SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have any account?",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black54),),
                  TextButton(onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                        builder: (context)
                    =>SignupScreen()
                    ));
                  },
                      child: const Text('Create Account', style: TextStyle(
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
