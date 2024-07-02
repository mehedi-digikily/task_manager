import 'package:flutter/material.dart';
import 'package:task_manager/ui/screen/sing_up_screen.dart';

import '../widget/body_background.dart';
import 'forget_password_screen.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: BodyBackground(
        child: Padding(
          padding: const EdgeInsets.all(28.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 100),
              const Text('Get Started With',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w900),),
              const SizedBox(height: 20,),
              TextField(
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Email'
                ),
              ),
              const SizedBox(height: 20,),
              TextField(
                textInputAction: TextInputAction.next,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password'
                ),
              ),
              const SizedBox(
                height: 20,),
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
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const ForgetPassword(),));
                  }, child: const Text(
                    'Forget Password ?',
                    style: TextStyle(
                        color: Colors.grey,fontWeight: FontWeight.bold,),
                  ),
                  )
                ],
              ),
              const SizedBox(height: 5,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text( 'Dont have account?',style:TextStyle( fontWeight: FontWeight.w900,),),
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const SingUpScreen(),));
                  }, child: const Text(' Sing Up?',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,color: Colors.green),)
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
