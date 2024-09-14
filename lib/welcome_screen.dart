import 'package:fashion/signin_screen.dart';
import 'package:fashion/signup_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Background circles
        Positioned(
          top: -50,
          right: -80,
          child: CircleAvatar(
            radius: 120,
            backgroundColor: Color(0xff7AB2B2)//Colors.teal.shade100,
          ),
        ),
        Positioned(
          top: 90,
          right: -80,
          child: CircleAvatar(
            radius: 75,
            backgroundColor: Color(0xff4D869C)//Colors.teal.shade300,
          ),
        ),
        Positioned(
          bottom: -20,
          left: -100,
          child: CircleAvatar(
            radius: 200,
            backgroundColor: Color(0xff7AB2B2),
          ),
        ),
        //the BIG one

        Positioned(
          bottom: -170,
          right: -100,
          child: CircleAvatar(
            radius: 270,
            backgroundColor: Color(0xff4D869C)//Colors.teal.shade400,
          ),
        ),
        Positioned(
          bottom: -30,
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
              children: [
                Spacer(),

                const Text(
                  'Welcome To',
                  style: TextStyle(
                    fontSize: 38,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  'fashion guide',
                  style: TextStyle(
                    fontSize: 38,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              Spacer(),
              //  const SizedBox(height: 40),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SignUpScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.teal,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),

                  child: Center(
                      child: const Text('Sign Up',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
                ),
                const SizedBox(height: 20),
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
                  child: Center(child: const Text('Sign In',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
                ),
                Spacer(),

              ],
            ),
          ),
        ),
      ],
    );
  }
}
