import 'package:flutter/material.dart';
import 'package:task_manager/ui/screen/pin_verification.dart';
import 'package:task_manager/ui/screen/sing_up_screen.dart';
import '../widget/body_background.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

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
                const Text('Your Email Address',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w900),),
                const Text('A digit verification pin will send to your  email address'),
                const SizedBox(height: 20,),
                TextField(
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      labelText: 'Email'
                  ),
                ),
                const SizedBox(height: 20,),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const PinVerification(),));
                    }, child: const Icon(Icons.arrow_circle_right_outlined,color: Colors.black,),
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
