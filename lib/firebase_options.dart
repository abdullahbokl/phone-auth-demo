// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBgzdsrCzYeYFFDgVjBxlNOHAu3bDis7dc',
    appId: '1:278118241290:web:7075e94d77ad16518e7bf3',
    messagingSenderId: '278118241290',
    projectId: 'firebase-phone-auth-demo',
    authDomain: 'fir-phone-auth-demo-b3576.firebaseapp.com',
    storageBucket: 'firebase-phone-auth-demo.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB-BT9bF9AeTOdq2YxkWPfUunCHm89ReQI',
    appId: '1:278118241290:android:d44217f281a9ff898e7bf3',
    messagingSenderId: '278118241290',
    projectId: 'firebase-phone-auth-demo',
    storageBucket: 'firebase-phone-auth-demo.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBxAu5f7jJXxcgfFo-j029RUfYsepvXNPw',
    appId: '1:278118241290:ios:7794f67cb81a51ec8e7bf3',
    messagingSenderId: '278118241290',
    projectId: 'firebase-phone-auth-demo',
    storageBucket: 'firebase-phone-auth-demo.appspot.com',
    iosClientId: '278118241290-8c4u4jg3s8oefoc7q6lpcn5dp6h8psos.apps.googleusercontent.com',
    iosBundleId: 'com.example.phoneAuth',
  );
}