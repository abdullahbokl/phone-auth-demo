import 'package:flutter/material.dart';

import '../../constants.dart';
import 'custom_text_widget.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color color;
  final VoidCallback onPress;

  const CustomButton({
    super.key,
    required this.onPress,
    this.text = 'Write text ',
    this.color = kPrimaryColor,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      padding: const EdgeInsets.all(10),
      onPressed: onPress,
      color: color,
      child: CustomText(
        alignment: Alignment.center,
        text: text,
        color: Colors.white,
      ),
    );
  }
}
