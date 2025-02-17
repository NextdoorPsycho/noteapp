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

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAyeR1MkDjoPDMJgji0mvJ8fl59X8R4Fts',
    appId: '1:1081938184664:web:ec1aed1b78c33d8f4bcaad',
    messagingSenderId: '1081938184664',
    projectId: 'noteappnoteapp',
    authDomain: 'noteappnoteapp.firebaseapp.com',
    storageBucket: 'noteappnoteapp.appspot.com',
    measurementId: 'G-QSKWLBDQS0',
  );

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAyeR1MkDjoPDMJgji0mvJ8fl59X8R4Fts',
    appId: '1:1081938184664:web:ec1aed1b78c33d8f4bcaad',
    messagingSenderId: '1081938184664',
    projectId: 'noteappnoteapp',
    authDomain: 'noteappnoteapp.firebaseapp.com',
    storageBucket: 'noteappnoteapp.appspot.com',
    measurementId: 'G-QSKWLBDQS0',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDccVmvNCFhrcPIWbO1zOG6zmsAFEGPT-Y',
    appId: '1:1081938184664:ios:ad3e22d0849f5a4f4bcaad',
    messagingSenderId: '1081938184664',
    projectId: 'noteappnoteapp',
    storageBucket: 'noteappnoteapp.appspot.com',
    iosBundleId: 'com.example.noteapp',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDccVmvNCFhrcPIWbO1zOG6zmsAFEGPT-Y',
    appId: '1:1081938184664:ios:a71523f4ce1c75c14bcaad',
    messagingSenderId: '1081938184664',
    projectId: 'noteappnoteapp',
    storageBucket: 'noteappnoteapp.appspot.com',
    iosBundleId: 'art.arcane.noteapp',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBTmilvGqYai4kEs_Mg9FXjlZvJHSKKDZs',
    appId: '1:1081938184664:android:9d0d207044deb8284bcaad',
    messagingSenderId: '1081938184664',
    projectId: 'noteappnoteapp',
    storageBucket: 'noteappnoteapp.appspot.com',
  );

}