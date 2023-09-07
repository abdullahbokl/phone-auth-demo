import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants.dart';
import '../../view_models/auth_view_model.dart';
import '../widgets/custom_button_widget.dart';
import '../widgets/custom_text_form_field_widget.dart';

class OTPScreen extends GetWidget<AuthViewModel> {
  OTPScreen({Key? key}) : super(key: key);

  final TextEditingController otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTextFormField(
              text: 'otp',
              controller: otpController,
            ),
            const SizedBox(height: 30),
            CustomButton(
              onPress: () {
                controller.otpVerification(otpController.text);
              },
              text: 'verify',
              color: kPrimaryColor,
            ),
            CustomButton(
              onPress: () {
                Get.back();
              },
              text: 'back',
              color: kPrimaryColor,
            ),
          ],
        ),
      ),
    );
  }
}
