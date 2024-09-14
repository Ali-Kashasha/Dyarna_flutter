//Choose a new & strong password
// of minimum 8 characers

import 'dart:ui';

import 'package:fashion/confirmcode_screen.dart';
import 'package:fashion/signin_screen.dart';
import 'package:flutter/material.dart';

class NewPasswordScreen extends StatelessWidget {
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
              bottom: 40,
              left: -120,
              child: CircleAvatar(
                radius: 220,
                backgroundColor: Color(0xff7AB2B2),
              ),
            ),
            //the BIG one

            Positioned(
              bottom: -240,
              right: -180,
              child: CircleAvatar(
                  radius: 350,
                  backgroundColor: Color(0xff4D869C)//Colors.teal.shade400,
              ),
            ),
            Positioned(
              bottom: -100,
              right: -150,
              child: CircleAvatar(
                radius: 220,
                backgroundColor: Color(0xff7AB2B2),
              ),
            ),

            // Content
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Spacer(
                      flex: 3,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        const Text(
                          'Choose a new & strong password\nof minimum 8 characers',
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),

                    Spacer(
                      flex: 4,

                    ),
                    const SizedBox(height: 30),
                    _buildTextField(
                      hintText: 'Password',
                      icon: Icons.lock_outline,
                      obscureText: true,
                    ),
                    const SizedBox(height: 15),
                    _buildTextField(
                      hintText: 'Confirm Password',
                      icon: Icons.lock_outline,
                      obscureText: true,
                    ),
                    const SizedBox(height: 30),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SignINScreen()));
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.teal,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Center(child: const Text('Rest Password',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
                    ),
                    const SizedBox(height: 20),
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
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
