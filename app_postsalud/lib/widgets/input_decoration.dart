import 'package:flutter/material.dart';

class InputDecorations {
  static InputDecoration inputDecoration({
    required String hintText,
    required String labelText,
    required Icon icono,
  }) {
    return InputDecoration(
      enabledBorder: const UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.black),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.blue.shade200, width: 2),
      ),
      hintText: hintText,
      hintStyle: const TextStyle(color: Colors.black54),
      labelText: labelText,
      labelStyle: const TextStyle(color: Colors.blue),
      prefixIcon: icono,
    );
  }
}
