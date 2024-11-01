// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return macos;
      case TargetPlatform.windows:
        return windows;
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
    apiKey: 'AIzaSyB3mv9JjQQFVUn1jqGai5c0ZBCC8DJugi8',
    appId: '1:947575420404:web:644e60390cd9435ef8f5a1',
    messagingSenderId: '947575420404',
    projectId: 'auth-455d3',
    authDomain: 'auth-455d3.firebaseapp.com',
    storageBucket: 'auth-455d3.appspot.com',
    measurementId: 'G-RKRZWSEJKQ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDRjtjlIuLAWk6K7iY7ZiCeXn77Tie4GdI',
    appId: '1:947575420404:android:0123892bf254f871f8f5a1',
    messagingSenderId: '947575420404',
    projectId: 'auth-455d3',
    storageBucket: 'auth-455d3.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBFo-7msPUNz9WI9G1p6Ab2GrA7NjIo1qY',
    appId: '1:947575420404:ios:59049f3e12753cb3f8f5a1',
    messagingSenderId: '947575420404',
    projectId: 'auth-455d3',
    storageBucket: 'auth-455d3.appspot.com',
    iosBundleId: 'com.example.alabTechnology',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBFo-7msPUNz9WI9G1p6Ab2GrA7NjIo1qY',
    appId: '1:947575420404:ios:59049f3e12753cb3f8f5a1',
    messagingSenderId: '947575420404',
    projectId: 'auth-455d3',
    storageBucket: 'auth-455d3.appspot.com',
    iosBundleId: 'com.example.alabTechnology',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyB3mv9JjQQFVUn1jqGai5c0ZBCC8DJugi8',
    appId: '1:947575420404:web:3a896137345a3914f8f5a1',
    messagingSenderId: '947575420404',
    projectId: 'auth-455d3',
    authDomain: 'auth-455d3.firebaseapp.com',
    storageBucket: 'auth-455d3.appspot.com',
    measurementId: 'G-504F4LWXGF',
  );
}
