// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;
  const MyTextField({
    super.key, 
    required this.controller,
    required this.hintText,
    required this.obscureText,
  
  });

  @override
  Widget build(BuildContext context) {
    return
        //username
        Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(
              color: Colors.grey.shade500,
              fontFamily: 'Poppins',
            ),
            prefixIcon: hintText == "Username"
                ? Icon(
                    Icons.person,
                    color: Colors.grey.shade500,
                  )
                : Icon(
                    Icons.lock_person, 
                    color: Colors.grey.shade500,
                  ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(10),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade400),
              borderRadius: BorderRadius.circular(10),
            ),
            fillColor: Colors.grey.shade200,
            filled: true),
      ),
    );
  }
}
