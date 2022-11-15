import 'package:flutter/material.dart';
import 'Input.dart';
void main() {
  runApp(const BMI());
}
class BMI extends StatelessWidget {
  const BMI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
         accentColor: Colors.purple,
      ),
      home: Scaffold(
        backgroundColor: Color(0xFF0E0F20),
        appBar: AppBar(
          backgroundColor: Color(0xFF0E0F20),
          centerTitle: true,
          title: Text("BMI CALCULATOR"),
        ),
        body: Input(),
      ),
    );
  }
}

