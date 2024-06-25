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
    apiKey: 'AIzaSyDNVGWpEhNSiT0FUjIjlKVMxazQtJ-4s5k',
    appId: '1:377056267457:web:98bacffdd39707db8c9840',
    messagingSenderId: '377056267457',
    projectId: 'dalel-59e9d',
    authDomain: 'dalel-59e9d.firebaseapp.com',
    storageBucket: 'dalel-59e9d.appspot.com',
    measurementId: 'G-ZYGRVZSKNE',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA_Y3Y8ju-q-k-AHuf7AEU6f82z3G7jscE',
    appId: '1:377056267457:android:5e26f6c70abea66d8c9840',
    messagingSenderId: '377056267457',
    projectId: 'dalel-59e9d',
    storageBucket: 'dalel-59e9d.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAVVoAuwcHlIr4rLpum32VG__gC4PTzk4c',
    appId: '1:377056267457:ios:cf5fd973df78d60a8c9840',
    messagingSenderId: '377056267457',
    projectId: 'dalel-59e9d',
    storageBucket: 'dalel-59e9d.appspot.com',
    iosBundleId: 'com.example.dalelApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAVVoAuwcHlIr4rLpum32VG__gC4PTzk4c',
    appId: '1:377056267457:ios:cf5fd973df78d60a8c9840',
    messagingSenderId: '377056267457',
    projectId: 'dalel-59e9d',
    storageBucket: 'dalel-59e9d.appspot.com',
    iosBundleId: 'com.example.dalelApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDNVGWpEhNSiT0FUjIjlKVMxazQtJ-4s5k',
    appId: '1:377056267457:web:f9160922dbe639fd8c9840',
    messagingSenderId: '377056267457',
    projectId: 'dalel-59e9d',
    authDomain: 'dalel-59e9d.firebaseapp.com',
    storageBucket: 'dalel-59e9d.appspot.com',
    measurementId: 'G-WD33BSQS5Q',
  );
}
