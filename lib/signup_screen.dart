import 'dart:ui';

import 'package:fashion/home_screen.dart';
import 'package:fashion/signin_screen.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  TextEditingController confirmPasswordController=TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          color: Colors.grey.shade200,
          child: Stack(

            children: [

              Container(
                height: MediaQuery.of(context).size.height/3.5,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(bottomRight:Radius.circular(90) )
                ),
              ),
              // Background circles
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

              //the BIG one

              Positioned(
                bottom: -240,
                right: -100,
                child: CircleAvatar(
                    radius: 270,
                    backgroundColor: Color(0xff4D869C)//Colors.teal.shade400,
                ),
              ),
              Positioned(
                bottom: -100,
                right: -80,
                child: CircleAvatar(
                  radius: 150,
                  backgroundColor: Color(0xff7AB2B2),
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
                      const Text(
                        'Sign Up',
                        style: TextStyle(
                          fontSize: 38,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Hello! let\'s join with us',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 30),
                      _buildTextField(
                        hintText: 'Email',
                        icon: Icons.email_outlined,
                        controller: emailController
                      ),
                      const SizedBox(height: 15),
                      _buildTextField(
                        hintText: 'Password',
                        icon: Icons.lock_outline,
                        controller: passwordController,
                        obscureText: true,
                      ),
                      const SizedBox(height: 15),
                      _buildTextField(
                        hintText: 'Confirm Password',
                        icon: Icons.lock_outline,
                        controller: confirmPasswordController,
                        obscureText: true,
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: [
                          Checkbox(
                            value: true,

                            onChanged: (value) {
                              // Handle checkbox value changes
                              value !=value;
                            },
                          ),
                          const Text('I agree with privacy policy', style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),),
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
                        child: Center(child: const Text('Sign Up',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
                      ),
                      const SizedBox(height: 20),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SignINScreen()));

                        },
                        child: const Text(
                          'You already have an account? sign in',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField({required String hintText, required IconData icon, required TextEditingController controller, bool obscureText = false}) {
    return TextField(
      controller: controller,
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
