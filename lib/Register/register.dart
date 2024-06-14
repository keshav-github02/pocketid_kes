import 'package:flutter/material.dart';
import 'package:pocketid_kes/HomePage/HomePage.dart';
import 'package:pocketid_kes/utils/reusable.dart';
import 'dart:math' as Math;
class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final TextEditingController _emailTextController = TextEditingController();
  final TextEditingController _passwordTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 55, 14, 201),
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 120,
              ),
              Transform.rotate(
                angle: Math.pi/0.304,
                child: Icon(
                  Icons.account_balance_wallet_outlined,

                  color: Colors.white,
                  size: 90,
                ),
              ),
              Text(
                "Pocket_ID",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.normal,
                ),
              ),
              Center(
                child: Column(
                  children: [
                    SafeArea(
                        child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 35.0),
                      child: Container(
                        height: 360,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              height: 40,
                            ),
                            reusableTextFeild("Email", Icons.person, false,
                                _emailTextController),
                            SizedBox(
                              height: 15,
                            ),
                            reusableTextFeild("Password", Icons.key, true,
                                _passwordTextController),
                            SizedBox(
                              height: 25,
                            ),
                            Container(
                              height: 35,
                              child: Text(
                                "Forgot Password",
                                style: TextStyle(
                                  color: Colors.grey[700],
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            Container(
                              height: 43,
                              width: 150,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 55, 14, 201),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: TextButton(
                                onPressed: () {
                                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MyHomePage()));
                                },
                                child: Text(
                                  "Sign Up",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Already have an account?",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 15),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Sign in",
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 55, 14, 201),
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
