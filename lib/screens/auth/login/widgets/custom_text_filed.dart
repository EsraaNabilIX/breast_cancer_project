import 'package:flutter/material.dart';

class CustomFormField extends StatelessWidget {
  String hint;
  TextEditingController? controller;
  bool secure;
  IconData icons;

  CustomFormField({
    required this.hint,
    this.controller,
    required this.secure,
    required this.icons,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.white,
            border: Border.all(color: Colors.black12)),
        child: TextField(
          controller: controller,
          obscureText: secure,
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding:
                const EdgeInsets.symmetric(vertical: 13, horizontal: 5),
            prefixIcon: Icon(
              icons,
              size: 25,
              color: const Color(0xfffdb9c8),
            ),
            hintText: hint,
            hintStyle: const TextStyle(
              fontSize: 14,
              color: Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}
