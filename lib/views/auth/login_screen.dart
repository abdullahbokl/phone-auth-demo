import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants.dart';
import '../../view_models/auth_view_model.dart';
import '../widgets/custom_button_widget.dart';
import '../widgets/custom_text_form_field_widget.dart';
import '../widgets/custom_text_widget.dart';

class LoginScreen extends GetWidget<AuthViewModel> {
  LoginScreen({Key? key}) : super(key: key);

  TextEditingController phoneNumberController = TextEditingController();
  FirebaseAuth auth = FirebaseAuth.instance;

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
            const CustomText(text: 'Welcome', fontSize: 30),
            const SizedBox(height: 30),
            CustomTextFormField(
              text: 'Phone number',
              keyboardType: TextInputType.phone,
              controller: phoneNumberController,
            ),
            const SizedBox(height: 30),
            CustomButton(
              onPress: () {
                controller.phoneVerification(phoneNumberController.text);
              },
              text: 'SIGN IN',
              color: kPrimaryColor,
            ),
          ],
        ),
      ),
    );
  }
}
