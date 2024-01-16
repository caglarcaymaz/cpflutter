import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../widgets/input_text_field.dart';

class SignupScreen extends StatelessWidget {
  
   SignupScreen({super.key});
     final TextEditingController _emailController = TextEditingController();
      final TextEditingController _passwordController = TextEditingController();
      final TextEditingController _usernamecontroller = TextEditingController();

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
            const Text('Corporate Registration',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700)),
            const SizedBox(
              height: 25,
            ),
             Stack(
              children: [
                CircleAvatar(
                  radius: 64,
                  backgroundImage: NetworkImage('https://www.pngitem.com/pimgs/m/150-1503945_transparent-user-png-default-user-image-png-png.png',
                  ),
                  backgroundColor: Colors.black,
                ),
              
             Positioned(
              bottom: -10,
              left: 80,
              child: IconButton(
                onPressed: () {
                 print('icon clicked');
                },
                icon: const Icon(
                  Icons.add_a_photo,
                ),
              ),
             ),
          ],
            ),
            
            const SizedBox(
              height: 15,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.7,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: InputTextField(
                controller: _usernamecontroller,
                labelText: 'Username',
                icon: Icons.person,
              ),
            ),
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
                  print('New User Registered');
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
              const Text('Already have an account?', style: TextStyle(fontSize: 20),),
              InkWell
              (
                onTap: (){
                  print('navigigating to Register screen');
                },
                child: Text('Login', style: TextStyle(fontSize: 20,color: buttonColor),)),


            ],)
          ],
        ),
      ),
    );
  }
}