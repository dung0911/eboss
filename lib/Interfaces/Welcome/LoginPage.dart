import 'package:eboss/Interfaces/Welcome/Header.dart';
import 'package:eboss/Interfaces/Welcome/InputField.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      backgroundColor: Color.fromRGBO(29, 65, 127, 1),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: MediaQuery.of(context).size.height * 2 / 3,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color.fromRGBO(246, 246, 246, 1),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
              ),
            ),
          ),
          // Logo ở trên cùng
          Positioned(
            top: (orientation == Orientation.portrait) ? 100 : 5,
            left: 35,
            right: 35,
            child: Center(
              child: OrientationBuilder(
                builder: (context, orientation) {
                  double screenWidth = MediaQuery.of(context).size.width;
                  double screenHeight = MediaQuery.of(context).size.height;

                  double aspectRatio;

                  if (orientation == Orientation.portrait) {
                    aspectRatio = (screenWidth / 1) / (screenHeight / 4);
                  } else {
                    aspectRatio = (screenWidth / 4) / (screenHeight / 6);
                  }

                  return AspectRatio(
                    aspectRatio: aspectRatio,
                    child: Image.asset('assets/images/logo.jpg', fit: BoxFit.contain),
                  );
                },
              ),
            ),
          ),
          Positioned(
            top: (orientation == Orientation.portrait)
                ? MediaQuery.of(context).size.height * 1 / 3
                : MediaQuery.of(context).size.height * 1 / 4, // Điều chỉnh giá trị này cho phù hợp
            left: 20,
            right: 20,
            child: InputField(),
          ),

          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/eboss_logo_60.png',
                  width: 100,
                  height: 30,
                ),
                SizedBox(height: 3),
                Text(
                  'Bản quyền của Công ty CP Công Nghệ FISOFT.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  'Giữ toàn quyền',
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

