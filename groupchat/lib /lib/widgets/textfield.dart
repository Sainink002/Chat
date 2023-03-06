// ignore_for_file: file_names

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  CustomTextField(
      {Key? key,
      this.hintText,
      this.controller,
      this.suffixIcon,
      this.obscureText,
      this.prefixIcon,
      this.horizontal,
      this.height})
      : super(key: key);
  final String? hintText;
  bool ?isvisible;
  double? horizontal;
  TextEditingController? controller;
  Widget? suffixIcon;
  bool? obscureText;
  Widget? prefixIcon;
  double? height;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontal ?? 0),
      child: Container(
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: const Color.fromARGB(255, 89, 88, 88),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: TextField(
            obscureText: obscureText ?? false,
            controller: controller,
            cursorColor: Colors.grey,
            decoration: InputDecoration(
              suffixIcon: suffixIcon,
              prefixIcon: prefixIcon,
              hintText: hintText,
              border: const OutlineInputBorder(
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
