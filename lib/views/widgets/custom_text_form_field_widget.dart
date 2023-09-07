import 'package:flutter/material.dart';

import 'custom_text_widget.dart';

class CustomTextFormField extends StatelessWidget {
  final String text;
  final String hint;
  final Function(String?)? onSave;
  final String? Function(String?)? validator;
  final TextEditingController controller;
  final TextInputType? keyboardType;

  const CustomTextFormField({
    super.key,
    this.text = '',
    this.hint = '',
    this.onSave,
    this.validator,
    this.keyboardType,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomText(
          text: text,
          fontSize: 14,
          color: Colors.grey.shade900,
        ),
        const SizedBox(height: 10),
        TextFormField(
          keyboardType: keyboardType,
          controller: controller,
          onSaved: onSave,
          validator: validator,
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            hintText: hint,
            hintStyle: const TextStyle(
              color: Colors.black,
            ),
            fillColor: Colors.white,
          ),
        )
      ],
    );
  }
}
