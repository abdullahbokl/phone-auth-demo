import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../view_models/auth_view_model.dart';
import 'auth/login_screen.dart';

class HomePage extends GetWidget<AuthViewModel> {
  HomePage({Key? key}) : super(key: key);

  var auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          IconButton(
              onPressed: () {
                // sign out from firebase and navigate to login screen
                auth.signOut();
                Get.offAll(() => LoginScreen());
              },
              icon: const Icon(Icons.logout)),
        ],
      ),
      body: const Center(
        child: Text('Home Page'),
      ),
    );
  }
}
