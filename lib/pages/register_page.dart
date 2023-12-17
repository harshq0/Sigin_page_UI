import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:signin_page/components/my_button.dart';
import 'package:signin_page/components/my_text_field.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
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
                    'Register and enjoy!',
                    style: GoogleFonts.outfit(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),

                  const SizedBox(
                    height: 20,
                  ),

                  //textfield + username
                  const MyTextField(
                    hintText: 'username',
                    obscureText: false,
                  ),

                  const SizedBox(
                    height: 16,
                  ),

                  //textfield + password
                  const MyTextField(hintText: 'password', obscureText: true),

                  const SizedBox(
                    height: 16,
                  ),

                  // re enter password
                  const MyTextField(
                      hintText: 're-type password', obscureText: true),

                  const SizedBox(
                    height: 20,
                  ),

                  //sign in button
                  const MyButton(
                    text: 'Sign up',
                  ),

                  const SizedBox(
                    height: 40,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already a member?',
                        style: GoogleFonts.outfit(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        ' Login',
                        style: GoogleFonts.outfit(
                          fontSize: 14,
                          color: Colors.red,
                          fontWeight: FontWeight.w700,
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
