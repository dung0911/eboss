import 'package:eboss/Interfaces/HomePage/Dashboard.dart';
import 'package:eboss/Widget/WelcomeWidget/CustomButton.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        CustomButton(
          label: "Login",
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Dashboard(),));
          },backgroundColor: Color.fromRGBO(29, 65, 127, 1),
        ),
        // SizedBox(height: 20,),
        // CustomButton(
        //   label: "Clear",
        //   onPressed: () {
        //   },
        // ),
      ],
    );
  }
}
