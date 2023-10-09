import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  final String hintText;
  final IconData prefixIcon;
  final bool obscureText;
  final Function(String)? onChanged;
  final Function()? onTogglePassword;
  final TextEditingController? controller;
  final Widget? suffixIcon;

  InputText({
    required this.hintText,
    required this.prefixIcon,
    this.obscureText = false,
    this.onChanged,
    this.controller,
    this.onTogglePassword,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      onChanged: onChanged,
      decoration: InputDecoration(
        prefixIcon: Padding(
          padding: EdgeInsets.only(left: 20, right: 5),
          child: Icon(prefixIcon, color: Colors.grey),
        ),
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.grey),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: BorderSide(color: Colors.black),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: BorderSide(color: Colors.black, width: 2.0),
        ),
        suffixIcon: suffixIcon,
      ),
    );
  }
}
