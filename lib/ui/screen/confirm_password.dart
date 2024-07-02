import 'package:flutter/material.dart';

import '../widget/body_background.dart';
import 'log_in_screen.dart';

class ConfirmPassword extends StatelessWidget {
  const ConfirmPassword({super.key});

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
                const SizedBox(height: 100,),
                const Text('Set Password',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w900),),
                const Text('Minimum length password 8 character with latter and number combination'),
                const SizedBox(height: 20,),
                TextField(
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                      labelText: 'Password'
                  ),
                ),
                const SizedBox(height: 15,),
                TextField(
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                      labelText: 'Confirm Password'
                  ),
                ),
                const SizedBox(height: 20,),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const LogInScreen(),), (route) => false);
                    }, child: const Text('Confirm'),
                  ),
                ),
                const SizedBox(
                  height: 30,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Have account?',style:TextStyle( fontWeight: FontWeight.w900,),),
                    TextButton(onPressed: (){
                      Navigator.pop(context);
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
