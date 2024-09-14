import 'package:fashion/newpassword_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';



class ConfirmCodeScreen extends StatefulWidget {
  @override
  _ConfirmCodeScreenState createState() => _ConfirmCodeScreenState();
}

class _ConfirmCodeScreenState extends State<ConfirmCodeScreen> {
  // Create FocusNodes for each TextField
  final FocusNode _focusNode1 = FocusNode();
  final FocusNode _focusNode2 = FocusNode();
  final FocusNode _focusNode3 = FocusNode();
  final FocusNode _focusNode4 = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Stack(
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Spacer(flex: 2,),
                  const Text(
                    'Enter code',
                    style: TextStyle(
                      fontSize: 38,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'We\'ve sent a four-digit code to\n your registered mobile number at:',
                    //textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                    ),
                  ),
                  Center(
                    child: const Text(
                      '+917007648240',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildEditableCodeBox(_focusNode1, _focusNode2),
                      _buildEditableCodeBox(_focusNode2, _focusNode3),
                      _buildEditableCodeBox(_focusNode3, _focusNode4),
                      _buildEditableCodeBox(_focusNode4, null),
                    ],
                  ),
                  const SizedBox(height: 20),
                  TextButton(
                    onPressed: (){},
                    child: const Text(
                      'Resend code',
                      style: TextStyle(
                        color: Colors.black54,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                 // const SizedBox(height: 40),
                  Spacer(flex: 2,),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>NewPasswordScreen()));
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.teal,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Center(child: const Text('Confirm',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
                  ),
                  Spacer(flex: 3,)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildEditableCodeBox(FocusNode currentFocus, FocusNode? nextFocus) {
    return Container(
      width: 50,
      margin: const EdgeInsets.symmetric(horizontal: 4),
      child: TextField(
        focusNode: currentFocus,
        textAlign: TextAlign.center,
        style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        keyboardType: TextInputType.number,
        inputFormatters: <TextInputFormatter>[
          FilteringTextInputFormatter.digitsOnly, // Allow only numbers
          LengthLimitingTextInputFormatter(1), // Limit to one digit
        ],
        onChanged: (value) {
          if (value.length == 1) {
            currentFocus.unfocus(); // Unfocus the current box
            if (nextFocus != null) {
              FocusScope.of(context).requestFocus(nextFocus); // Move focus to the next box
            }
          }
        },
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(8),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: Colors.black54),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    // Dispose the FocusNodes when the widget is disposed
    _focusNode1.dispose();
    _focusNode2.dispose();
    _focusNode3.dispose();
    _focusNode4.dispose();
    super.dispose();
  }
}
