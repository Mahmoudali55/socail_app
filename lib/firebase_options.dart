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
    apiKey: 'AIzaSyC681p8ukzk9gQzJ_EYbDzciizWNxG-_Vc',
    appId: '1:1066707130661:web:b8926ce5cd71429bba22cc',
    messagingSenderId: '1066707130661',
    projectId: 'tawsal-app',
    authDomain: 'tawsal-app.firebaseapp.com',
    storageBucket: 'tawsal-app.appspot.com',
    measurementId: 'G-6HT4GY23P4',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCP1YfXO3Rq_WRwuhyTJERyV32cWdqYif8',
    appId: '1:1066707130661:android:9f50015267372074ba22cc',
    messagingSenderId: '1066707130661',
    projectId: 'tawsal-app',
    storageBucket: 'tawsal-app.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDHBbAx7R_n_APFc7YeO_iWOWhyMguxlIA',
    appId: '1:1066707130661:ios:22ccf1d84652ccb2ba22cc',
    messagingSenderId: '1066707130661',
    projectId: 'tawsal-app',
    storageBucket: 'tawsal-app.appspot.com',
    iosBundleId: 'com.amr.templet',
  );
}