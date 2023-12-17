import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:signin_page/components/my_button.dart';
import 'package:signin_page/components/my_text_field.dart';
import 'package:signin_page/components/square.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 50),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  //

                  Image.asset(
                    'lib/images/logo.png',
                    height: 150,
                  ),

                  const SizedBox(
                    height: 16,
                  ),

                  //text to welcome
                  Text(
                    'Welcome back you been missed!',
                    style: GoogleFonts.outfit(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),

                  const SizedBox(
                    height: 25,
                  ),

                  //textfield + username
                  const MyTextField(
                    hintText: 'username',
                    obscureText: false,
                  ),

                  const SizedBox(
                    height: 20,
                  ),

                  //textfield + password
                  const MyTextField(hintText: 'password', obscureText: true),

                  const SizedBox(
                    height: 8,
                  ),

                  //forget text
                  Padding(
                    padding: const EdgeInsets.only(left: 240),
                    child: Text(
                      'Forget Password?',
                      style: GoogleFonts.outfit(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 20,
                  ),

                  //sign in button
                  const MyButton(
                    text: 'Sign in',
                  ),

                  const SizedBox(
                    height: 40,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        ' Or Continue with ',
                        style: GoogleFonts.outfit(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(
                    height: 40,
                  ),

                  //image
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MySquare(imagePath: 'lib/images/google.png'),
                      SizedBox(
                        width: 18,
                      ),
                      MySquare(imagePath: 'lib/images/apple.png'),
                    ],
                  ),

                  const SizedBox(
                    height: 40,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Not a member?',
                        style: GoogleFonts.outfit(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        ' Register now',
                        style: GoogleFonts.outfit(
                          fontSize: 14,
                          color: Colors.red,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
