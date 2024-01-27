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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for android - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.linux:
        return linux;
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAQ8RhQuxBhMIWdBcIc2jh6URuANx6lJr0',
    appId: '1:1022831872618:web:4059d856938e94d798d813',
    messagingSenderId: '1022831872618',
    projectId: 'openrooms-bee8a',
    authDomain: 'openrooms-bee8a.firebaseapp.com',
    databaseURL: 'https://openrooms-bee8a-default-rtdb.firebaseio.com',
    storageBucket: 'openrooms-bee8a.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCbO7iQGrKnuDV5yokRqULFz6BAiHimTaM',
    appId: '1:1022831872618:ios:97ad0fd318447a2398d813',
    messagingSenderId: '1022831872618',
    projectId: 'openrooms-bee8a',
    databaseURL: 'https://openrooms-bee8a-default-rtdb.firebaseio.com',
    storageBucket: 'openrooms-bee8a.appspot.com',
    iosBundleId: 'com.example.openRooms2',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAQ8RhQuxBhMIWdBcIc2jh6URuANx6lJr0',
    appId: '1:1022831872618:web:61b827527d215f2598d813',
    messagingSenderId: '1022831872618',
    projectId: 'openrooms-bee8a',
    authDomain: 'openrooms-bee8a.firebaseapp.com',
    databaseURL: 'https://openrooms-bee8a-default-rtdb.firebaseio.com',
    storageBucket: 'openrooms-bee8a.appspot.com',
  );

  static const FirebaseOptions linux = FirebaseOptions(
    apiKey: 'AIzaSyAQ8RhQuxBhMIWdBcIc2jh6URuANx6lJr0',
    appId: '1:1022831872618:web:b0e55bdba2f33b4798d813',
    messagingSenderId: '1022831872618',
    projectId: 'openrooms-bee8a',
    authDomain: 'openrooms-bee8a.firebaseapp.com',
    databaseURL: 'https://openrooms-bee8a-default-rtdb.firebaseio.com',
    storageBucket: 'openrooms-bee8a.appspot.com',
  );
}