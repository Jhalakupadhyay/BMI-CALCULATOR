import 'package:flutter/material.dart';
import 'Input.dart';
class ResultPage extends StatelessWidget {
  const ResultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0E0F20),
      appBar: AppBar(
        backgroundColor: const Color(0xFF0E0F20),
        title: const Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 10.0),
                child: const Text(
              'YOUR RESULT',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            )),
          ),
          Expanded(
            flex: 5,
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFF1D1E33),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Expanded(
                child: Column(
                  children: [
                    Expanded(
                      child: Text(RESULT(CALCULATION(h, wgt)),
                        style: TextStyle(
                          fontSize: 30.0,
                          color: Colors.lightGreenAccent,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                      CALCULATION(h, wgt).toStringAsFixed(1),
                        style: TextStyle(fontSize: 80.0),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        Suggestion(CALCULATION(h, wgt)),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap:(){

              Navigator.pop(context);
            },
            child: Expanded(
              child: Container(
                margin: EdgeInsets.all(10.0),
                width:400.0,
                height: 80.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.red,
                ),
                child:const Center(
                  child: Text(
                    "RE-CALCULATE",
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
