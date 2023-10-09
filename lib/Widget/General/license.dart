import 'package:flutter/material.dart';

class License extends StatelessWidget {
  final Color textColor;

  License({required this.textColor});

  @override
  Widget build(BuildContext context) {
    return Align(
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
              color: textColor,
              fontSize: 10,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 3,
          ),
          Text(
            'Giữ toàn quyền',
            style: TextStyle(color: textColor, fontSize: 10),
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
