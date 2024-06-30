import 'package:flutter/material.dart';
import 'package:task_manager/ui/screen/splash_screen.dart';

class TaskManager extends StatefulWidget {
  const TaskManager({super.key});

  @override
  State<TaskManager> createState() => _TaskManagerState();
}

class _TaskManagerState extends State<TaskManager> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(

        textTheme: const TextTheme(
          titleMedium: TextStyle(
              fontSize: 45, fontWeight: FontWeight.w600,color: Colors.green),
        ),
        inputDecorationTheme: InputDecorationTheme(

            fillColor: Colors.white,
            filled: true,
            border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10)
          )
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
            padding: const EdgeInsets.symmetric(vertical: 10),
            alignment: Alignment.center,
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}
