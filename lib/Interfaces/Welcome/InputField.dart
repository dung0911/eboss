import 'package:eboss/Interfaces/Welcome/Button.dart';
import 'package:eboss/Widget/WelcomeWidget/InputText.dart';
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
    final orientation = MediaQuery.of(context).orientation;
    bool _rememberPassword = true;
    double height = (orientation == Orientation.portrait)
        ? MediaQuery.of(context).size.height / 2.5
        : MediaQuery.of(context).size.height / 1.75;
    double margin = (orientation == Orientation.portrait)
        ? 100
        : 0;
    return Container(
      margin: EdgeInsets.only(top: margin),
      height: height,
      padding: EdgeInsets.only(
          left: 20,
          right: 20
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
            color: Color.fromRGBO(29, 65, 127, 1),
            width: 2.0 // Độ dày của viền
        ),
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          InputText(
            hintText: "Username",
            prefixIcon: Icons.person,
            onChanged: (text) {
            },
          ),
          SizedBox(
            height: 5,
          ),
          InputText(
            hintText: "Password",
            prefixIcon: Icons.lock,
            obscureText: _obscureText,
            onChanged: (text) {
            },
            suffixIcon: IconButton(
              icon: Icon(
                _obscureText ? Icons.visibility : Icons.visibility_off,
                color: Colors.grey,
              ),
              onPressed: _togglePasswordVisibility,
            ),
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
          Button(),
        ],
      ),
    );
  }
}
