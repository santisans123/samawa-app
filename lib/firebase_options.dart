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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAvUTY_9sIWms2pJg06n_1Rm2MTRZcvmyA',
    appId: '1:814183821600:android:33cd262e7531e747e56745',
    messagingSenderId: '814183821600',
    projectId: 'samawa-app-4139c',
    storageBucket: 'samawa-app-4139c.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCsNS0fJ2VBxXH19qR6uAF7JtHOxUx7UOA',
    appId: '1:814183821600:ios:8cb4462d4daf0283e56745',
    messagingSenderId: '814183821600',
    projectId: 'samawa-app-4139c',
    storageBucket: 'samawa-app-4139c.appspot.com',
    androidClientId: '814183821600-hrh9t20g3gu243o29ga08rg8rhvfvve8.apps.googleusercontent.com',
    iosClientId: '814183821600-7a375bjnrlpbp56h6125a054v6ofbsdu.apps.googleusercontent.com',
    iosBundleId: 'com.example.samawa',
  );
}
