import 'package:eboss/Interfaces/Welcome/Header.dart';
import 'package:eboss/Interfaces/Welcome/InputField.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(29, 65, 127, 1),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: MediaQuery.of(context).size.height / 2.1,
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(246, 246, 246, 1),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
              ),
            ),
          ),
          Center(
            child: InputField(),
          ),
          Positioned(
            top: 60,
            left: 0,
            right: 0,
            child: Image.asset(
              'assets/images/logo.jpg',
              width: 100,
              height: 100,
            ),
          ),
          Positioned(
            bottom: 20,
            left: 0,
            right: 0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'assets/images/eboss_logo_60.png',
                  width: 100,
                  height: 40,
                ),
                SizedBox(height: 10),
                Text(
                  'Bản quyền của Công ty CP Công Nghệ FISOFT.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5,),
                Text(
                  'Giữ toàn quyền',
                  style: TextStyle(color: Colors.white, fontSize: 10),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
