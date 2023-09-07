import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

import '../views/auth/otp_screen.dart';
import '../views/home_page.dart';

class AuthViewModel extends GetxController {
  var authState = ''.obs;
  String verificationCode = '';
  var auth = FirebaseAuth.instance;

  Future phoneVerification(String phoneNumber) async {
    try {
      await FirebaseAuth.instance.verifyPhoneNumber(
        phoneNumber: phoneNumber,
        verificationCompleted: (PhoneAuthCredential credential) async {
          await auth.signInWithCredential(credential);
          Get.offAll(() => HomePage());
        },
        verificationFailed: (FirebaseAuthException e) {
          if (e.code == 'invalid-phone-number') {
            Get.snackbar('error', 'invalid-phone-number');
          }
        },
        codeSent: (String verificationId, int? resendToken) {
          verificationCode = verificationId;
          authState.value = 'Success';
          Get.to(() => OTPScreen());
        },
        timeout: const Duration(seconds: 60),
        codeAutoRetrievalTimeout: (String verificationId) {
          verificationCode = verificationId;
        },
      );
    } catch (e) {
      Get.snackbar(
        'error',
        'invalid-phone-number\n$e',
        duration: const Duration(seconds: 5),
      );
    }
  }

  otpVerification(String otp) async {
    try {
      PhoneAuthCredential phoneAuthCredential = PhoneAuthProvider.credential(
          verificationId: verificationCode, smsCode: otp);
      await auth.signInWithCredential(phoneAuthCredential);
      Get.offAll(HomePage());
    } catch (e) {
      Get.snackbar(
        'error',
        'invalid-otp',
        duration: const Duration(seconds: 5),
      );
    }
  }
}
