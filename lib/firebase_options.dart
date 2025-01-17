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
    apiKey: 'AIzaSyCL-9UC-bI9_shB5xFonplGqAABU4q_9D8',
    appId: '1:657257649495:web:25f92204f03240b1029a12',
    messagingSenderId: '657257649495',
    projectId: 'cw13-3c1eb',
    authDomain: 'cw13-3c1eb.firebaseapp.com',
    storageBucket: 'cw13-3c1eb.firebasestorage.app',
    measurementId: 'G-ZSHZEZGKVD',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB06GHpr93DkNVqHb6ZcHVN25MlTpiZ2sM',
    appId: '1:657257649495:android:b03b1850dd72671b029a12',
    messagingSenderId: '657257649495',
    projectId: 'cw13-3c1eb',
    storageBucket: 'cw13-3c1eb.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDbL0fw6OhrTiMpNZaK5_2nGRjHFYWwRSw',
    appId: '1:657257649495:ios:31677f78e14bc841029a12',
    messagingSenderId: '657257649495',
    projectId: 'cw13-3c1eb',
    storageBucket: 'cw13-3c1eb.firebasestorage.app',
    iosBundleId: 'com.example.firebaseAuthDemo',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDbL0fw6OhrTiMpNZaK5_2nGRjHFYWwRSw',
    appId: '1:657257649495:ios:31677f78e14bc841029a12',
    messagingSenderId: '657257649495',
    projectId: 'cw13-3c1eb',
    storageBucket: 'cw13-3c1eb.firebasestorage.app',
    iosBundleId: 'com.example.firebaseAuthDemo',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCL-9UC-bI9_shB5xFonplGqAABU4q_9D8',
    appId: '1:657257649495:web:ff7ef1277dd99532029a12',
    messagingSenderId: '657257649495',
    projectId: 'cw13-3c1eb',
    authDomain: 'cw13-3c1eb.firebaseapp.com',
    storageBucket: 'cw13-3c1eb.firebasestorage.app',
    measurementId: 'G-96CKXN7M6Y',
  );
}
