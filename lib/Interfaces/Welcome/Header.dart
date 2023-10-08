import 'package:flutter/material.dart';

class Header extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Center(
            child: Image.asset('assets/images/logo.jpg'), // Điều chỉnh kích thước theo mong muốn
          ),
          // SizedBox(height: 20),
          Center(
            // child: Text("Login", style: TextStyle(color: Colors.white, fontSize: 40),),
          ),
          SizedBox(height: 10,),
          // Center(
          //   child: Text("Electronic Business Operations Support System", style: TextStyle(
          //        color: Colors.white,
          //         fontSize: 12, fontStyle: FontStyle.italic),),
          // )
        ],
      ),
    );
  }
}
