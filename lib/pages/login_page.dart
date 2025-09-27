import 'package:flutter/material.dart';
import 'package:login_page/components/my_button.dart';
import 'package:login_page/components/my_textfield.dart';
import 'package:login_page/components/square_tile.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  // text editing controller
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

// sign user in method
void signUserIn(){}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        body: SafeArea(
            child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 50),

              // logo
              const Icon(
                Icons.lock,
                size: 100,
              ),

              const SizedBox(height: 50),

              // welcome back, you've been missed!
              const Text(
                'welcome back you\'ve been missed!',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),

              const SizedBox(height: 25),

              // username textfield
              MyTextfield(
                controller: usernameController,
                hintText: 'Username',
                obscureText: false,
              ),

              const SizedBox(height: 10),

              // password textfield
              MyTextfield(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),

              const SizedBox(height: 10),

              // forgot password
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
               child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Forgot Password?',
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
              ),

              const SizedBox(height: 25),

              // sign in button
              MyButton(
                onTap: signUserIn,
              ),

              const SizedBox(height: 50),

              // or continue with
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
              children: [
                Expanded(
                  child: Divider(
                   thickness: 0.5,
                   color: Colors.black,
                ),
              ),
              Padding(padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                'or continue with',
                style: TextStyle(color: Colors.black),
                ),
                ),  
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                   color: Colors.black,
                   )
                  ),
                ],
                ),
              ),
              

            const SizedBox(height: 50),


              // google + apple sign in buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [ 
                //google button
               SquareTile(imagepath: 'lib/images/google.png'),


               SizedBox(width: 25),
                
                //apple button
                 SquareTile(imagepath: 'lib/images/apple.png')
              ],
              ),

                const SizedBox(height: 50),

              // not a member? register now
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Text(
                  'Not a member?',
                  style: TextStyle(color: Colors.black),
                  ),
                const SizedBox(width: 4),
                Text('Register now',
                style: TextStyle(
                  color: Colors.blue, 
                  fontWeight: FontWeight.bold,
                ),
                ),
              ],)
            ] ,
          ),
        )));
  }
}
