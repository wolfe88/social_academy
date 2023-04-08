import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyTextField extends StatefulWidget {
  const MyTextField(
      {super.key,
      required this.containerColor,
      required this.textfieldTextColor,
      required this.hintColor,
      required this.borderRadius,
      required this.hintText});

  final Color containerColor;
  final Color textfieldTextColor;
  final Color hintColor;
  final double borderRadius;
  final String hintText;

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(16, 0, 16, 0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(widget.borderRadius),
        color: widget.containerColor,
      ),
      child: TextField(
        style: TextStyle(color: widget.textfieldTextColor),
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(16),
          border: InputBorder.none,
          hintText: widget.hintText,
          hintStyle: TextStyle(color: widget.hintColor),
        ),
      ),
    );
  }
}

class MyIconedTextField extends StatefulWidget {
  const MyIconedTextField({
    super.key,
    required this.containerColor,
    required this.textfieldTextColor,
    required this.iconColor,
    required this.hintColor,
    required this.borderRadius,
    required this.icon,
    required this.hintText,
  });

  final Color containerColor;
  final Color textfieldTextColor;
  final Color iconColor;
  final Color hintColor;
  final double borderRadius;
  final Icon icon;

  final String hintText;

  @override
  State<MyIconedTextField> createState() => _MyIconedTextFieldState();
}

class _MyIconedTextFieldState extends State<MyIconedTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(16, 0, 16, 0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(widget.borderRadius),
        color: widget.containerColor,
      ),
      child: TextField(
        style: TextStyle(color: widget.textfieldTextColor),
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(16),
          border: InputBorder.none,
          prefixIcon: Icon(
            Icons.email,
            color: widget.iconColor,
          ),
          hintText: widget.hintText,
          hintStyle: TextStyle(color: widget.hintColor),
        ),
      ),
    );
  }
}
