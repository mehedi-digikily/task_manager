import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:task_manager/ui/screen/sing_up_screen.dart';

import '../widget/body_background.dart';
import 'confirm_password.dart';

class PinVerification extends StatefulWidget {
  const PinVerification({super.key});

  @override
  State<PinVerification> createState() => _PinVerificationState();
}

class _PinVerificationState extends State<PinVerification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyBackground(
        child: Padding(
          padding: const EdgeInsets.all(36.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 100,),
                const Text('Pin Verification',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w900),),
                const Text('A 6 digit verification pin will send to your  email address'),
                const SizedBox(height: 30,),
                PinCodeTextField(
                  keyboardType: TextInputType.number,
                  length: 6,
                  obscureText: false,
                  animationType: AnimationType.fade,
                  pinTheme: PinTheme(
                    activeColor: Colors.white,
                    inactiveColor: Colors.green,
                    selectedFillColor: Colors.white,
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(5),
                    fieldHeight: 50,
                    fieldWidth: 40,
                    activeFillColor: Colors.white,
                  ),
                  animationDuration: const Duration(milliseconds: 300),
                  backgroundColor: Colors.white,
                  // enableActiveFill: true,
                  onCompleted: (v) {
                    print("Completed");
                  },
                  onChanged: (value) {
                    print(value);
                    setState(() {
                    });
                  },
                  beforeTextPaste: (text) {
                    return true;
                  }, appContext: context,
                ),                
                const SizedBox(
                  height: 30,),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const ConfirmPassword(),));
                    }, child: const Text('Verify'),
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
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const SingUpScreen(),));
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
