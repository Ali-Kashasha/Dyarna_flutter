import 'dart:ui';

import 'package:fashion/forgetpassword_screen.dart';
import 'package:fashion/home_screen.dart';
import 'package:fashion/signup_screen.dart';
import 'package:flutter/material.dart';

class SignINScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Stack(

          children: [
            // Background circles
            Positioned(
              top: -90,
              right: -80,
              child: CircleAvatar(
                  radius: 110,
                  backgroundColor: Color(0xff7AB2B2)//Colors.teal.shade100,
              ),
            ),
            Positioned(
              top: 40,
              right: -80,
              child: CircleAvatar(
                  radius: 75,
                  backgroundColor: Color(0xff4D869C)//Colors.teal.shade300,
              ),
            ),
            Positioned(
              bottom: -50,
              left: -150,
              child: CircleAvatar(
                radius: 300,
                backgroundColor: Color(0xff7AB2B2),
              ),
            ),
            //the BIG one

            Positioned(
              bottom: -170,
              right: -100,
              child: CircleAvatar(
                  radius: 280,
                  backgroundColor: Color(0xff4D869C)//Colors.teal.shade400,
              ),
            ),

            // Content
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Spacer(
                      flex: 3,
                    ),
                    const Text(
                      'Sign In',
                      style: TextStyle(
                        fontSize: 38,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Hwy! Good to see you again',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),

                    Spacer(
                      flex: 4,

                    ),
                    const SizedBox(height: 30),
                    _buildTextField(
                      hintText: 'Email',
                      icon: Icons.email_outlined,
                    ),
                    const SizedBox(height: 15),
                    _buildTextField(
                      hintText: 'Password',
                      icon: Icons.lock_outline,
                      obscureText: true,
                    ),

                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ForgetPasswordScreen()));

                          },
                          child: const Text(
                            'forget password?',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomeScreen()));
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.teal,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Center(child: const Text('Sign in',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
                    ),
                    const SizedBox(height: 20),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SignUpScreen()));
                      },
                      child: const Text(
                        'Don\'t have an account? sign up',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                    Spacer(
                      flex: 3,

                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField({required String hintText, required IconData icon, bool obscureText = false}) {
    return TextField(

      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: Icon(icon, color: Colors.grey),
        contentPadding: const EdgeInsets.all(20),
        filled: true,
        fillColor: Colors.grey.shade200,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
