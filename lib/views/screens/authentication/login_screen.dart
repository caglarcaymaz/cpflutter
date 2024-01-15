import 'package:cflutter/constants.dart';
import 'package:cflutter/views/widgets/input_text_field.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Video Calibration',
              style: TextStyle(
                fontSize: 35,
                color: buttonColor,
                fontWeight: FontWeight.w900,
              ),
            ),
            const Text('Login',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700)),
            const SizedBox(
              height: 25,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.7,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: InputTextField(
                controller: _emailController,
                labelText: 'Email',
                icon: Icons.email,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.7,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: InputTextField(
                controller: _passwordController,
                labelText: 'Password',
                icon: Icons.lock_rounded,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.6,
              height: 50,
              decoration: BoxDecoration(
                color: buttonColor,
                borderRadius: BorderRadius.circular(7),
              ),
              child: InkWell(
                onTap: (){
                  print('Login widget pressed');
                },
                child: const Center(
                    child: Text(
                  'Login',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                )),
              ),
            ),
            const SizedBox(height: 15,),
            Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Don\'t have an account?', style: TextStyle(fontSize: 20),),
              InkWell
              (
                onTap: (){
                  print('navigigating to Register screen');
                },
                child: Text('Register', style: TextStyle(fontSize: 20,color: buttonColor),)),


            ],)
          ],
        ),
      ),
    );
  }
}
