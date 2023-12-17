import 'package:flutter/material.dart';
import 'package:signin_page/components/my_button.dart';
import 'package:signin_page/components/my_text_field.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 80),
            child: Column(
              children: [
                //Icon

                const Icon(
                  Icons.lock,
                  size: 100,
                ),

                const SizedBox(
                  height: 25,
                ),

                //text to welcome
                Text(
                  'Welcome back to Sign In',
                  style: TextStyle(color: Colors.grey.shade700),
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
                  height: 15,
                ),

                //forget text
                const Padding(
                  padding: EdgeInsets.only(left: 240),
                  child: Text(
                    'Forget Password?',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),

                const SizedBox(
                  height: 30,
                ),

                //sign in button
                const MyButton(),

                const SizedBox(
                  height: 40,
                ),

                const Text('Or Continue with'),

                const SizedBox(
                  height: 40,
                ),

                //image
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      'lib/images/google.png',
                      height: 50,
                    ),
                    Image.asset(
                      'lib/images/apple.png',
                      height: 50,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 80,
                ),

                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Not a member?'),
                    Text(' Register now', style: TextStyle(color: Colors.blue))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
