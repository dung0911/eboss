import 'package:eboss/Interfaces/Welcome/Button.dart';
import 'package:flutter/material.dart';

class InputField extends StatefulWidget {
  @override
  _InputFieldState createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  bool _obscureText = true;

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    bool _rememberPassword = true;
    double width = MediaQuery.of(context).size.width;

    return Container(
      margin: EdgeInsets.only(top: 100.0),
      width: width * 10 / 12,
      height: 300,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
            color: Color.fromRGBO(29, 65, 127, 1),
            width: 2.0 // Độ dày của viền
            ),
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      // Màu nền cho Container và tất cả children của nó
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            width: width * 8 / 11,
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Padding(
                  padding: EdgeInsets.only(left: 20, right: 5),
                  child: Icon(Icons.person, color: Colors.grey),
                ) ,
                hintText: "Username",
                hintStyle: TextStyle(color: Colors.grey),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide(color: Colors.black),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide(color: Colors.black, width: 2.0),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: width * 8 / 11,
            child: TextField(
              obscureText: _obscureText,
              decoration: InputDecoration(
                prefixIcon: Padding(
                  padding: EdgeInsets.only(left: 20, right: 5),
                  child: Icon(Icons.lock, color: Colors.grey),
                ),
                hintText: "Password",
                hintStyle: TextStyle(color: Colors.grey),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide(color: Colors.black),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide(color: Colors.black, width: 2.0),
                ),
                suffixIcon: Padding(
                  padding: EdgeInsets.only(left: 5, right: 10),
                  child: IconButton(
                    icon: Icon(
                      _obscureText ? Icons.visibility : Icons.visibility_off,
                      color: Colors.grey,
                    ),
                    onPressed: _togglePasswordVisibility,
                  ),
                )

              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          CheckboxListTile(
            title: Text("Ghi nhớ"),
            value: _rememberPassword,
            onChanged: (bool? value) {
              setState(() {
                _rememberPassword = value!;
              });
            },
            controlAffinity: ListTileControlAffinity.leading,
          ),
          SizedBox(height: 10),
          Button(),
        ],
      ),
    );
  }
}
