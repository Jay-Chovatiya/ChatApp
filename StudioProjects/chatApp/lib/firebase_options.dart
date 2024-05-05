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
        return macos;
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
    apiKey: 'AIzaSyAoA4ETyWAfh1do1Df_vcARWXomliCShuI',
    appId: '1:322226644172:web:8aced64b746139003b0e69',
    messagingSenderId: '322226644172',
    projectId: 'chatapp-50493',
    authDomain: 'chatapp-50493.firebaseapp.com',
    storageBucket: 'chatapp-50493.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDxw4RX8g3A4ytMFAuO-clQKSJdjZoOTM8',
    appId: '1:322226644172:android:e7dee76dff2e07f63b0e69',
    messagingSenderId: '322226644172',
    projectId: 'chatapp-50493',
    storageBucket: 'chatapp-50493.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBp5zzWY7HnCsJdLCxt2HjiRiYz70ILp3U',
    appId: '1:322226644172:ios:0c62ba6d0e2983393b0e69',
    messagingSenderId: '322226644172',
    projectId: 'chatapp-50493',
    storageBucket: 'chatapp-50493.appspot.com',
    iosBundleId: 'com.example.chatapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBp5zzWY7HnCsJdLCxt2HjiRiYz70ILp3U',
    appId: '1:322226644172:ios:12e8686c4fadb7ac3b0e69',
    messagingSenderId: '322226644172',
    projectId: 'chatapp-50493',
    storageBucket: 'chatapp-50493.appspot.com',
    iosBundleId: 'com.example.chatapp.RunnerTests',
  );
}
