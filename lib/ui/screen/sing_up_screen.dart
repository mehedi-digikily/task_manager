import 'package:flutter/material.dart';

import '../widget/body_background.dart';
import 'log_in_screen.dart';

class SingUpScreen extends StatefulWidget {
  const SingUpScreen({super.key});

  @override
  State<SingUpScreen> createState() => _SingUpScreenState();
}

class _SingUpScreenState extends State<SingUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyBackground(
        child: Padding(
          padding: const EdgeInsets.all(28.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Join With Us',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w900),),
                const SizedBox(height: 20,),
                TextField(
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      labelText: 'Email'
                  ),
                ),
                const SizedBox(height: 15,),
                TextField(
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                      labelText: 'First Name'
                  ),
                ),
                const SizedBox(height: 15,),
                TextField(
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                      labelText: 'Last Name'
                  ),
                ),
                const SizedBox(height: 15,),
                TextField(
                  keyboardType: TextInputType.phone,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                      labelText: 'Phone'
                  ),
                ),
                const SizedBox(height: 15,),
                TextField(
                  obscureText: true,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                      labelText: 'Password'
                  ),
                ),
                const SizedBox(
                  height: 10,),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {}, child: const Icon(Icons.arrow_circle_right_outlined,color: Colors.black,),
                  ),
                ),
                const SizedBox(
                  height: 30,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text( 'Have account?',style:TextStyle( fontWeight: FontWeight.w900,),),
                    TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const LogInScreen(),));
                    }, child: const Text(
                      ' Sing In?',
                      style: TextStyle(
                          color: Colors.green,fontWeight: FontWeight.bold,),
                    ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
