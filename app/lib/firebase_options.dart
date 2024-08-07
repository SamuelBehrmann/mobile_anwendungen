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
    apiKey: 'AIzaSyDpevTJN0mpiWfIGiSvYEmiY895H_udKzE',
    appId: '1:181853757614:web:b7777c60683394715c4d3f',
    messagingSenderId: '181853757614',
    projectId: 'mobile-anwendungen-4ab02',
    authDomain: 'mobile-anwendungen-4ab02.firebaseapp.com',
    storageBucket: 'mobile-anwendungen-4ab02.appspot.com',
    measurementId: 'G-QG9EVDSSCY',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCvdMI1ifEUmF6I1raXDBP4YZ4vI05OPh4',
    appId: '1:181853757614:android:38794639ac7c3e755c4d3f',
    messagingSenderId: '181853757614',
    projectId: 'mobile-anwendungen-4ab02',
    storageBucket: 'mobile-anwendungen-4ab02.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBDVPS20faIZZY8WnQWi-MYVv-KO3fLwYQ',
    appId: '1:181853757614:ios:56a1f3c2ecc7129b5c4d3f',
    messagingSenderId: '181853757614',
    projectId: 'mobile-anwendungen-4ab02',
    storageBucket: 'mobile-anwendungen-4ab02.appspot.com',
    iosBundleId: 'de.htwg.moba.medi_support',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBDVPS20faIZZY8WnQWi-MYVv-KO3fLwYQ',
    appId: '1:181853757614:ios:56a1f3c2ecc7129b5c4d3f',
    messagingSenderId: '181853757614',
    projectId: 'mobile-anwendungen-4ab02',
    storageBucket: 'mobile-anwendungen-4ab02.appspot.com',
    iosBundleId: 'de.htwg.moba.medi_support',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDpevTJN0mpiWfIGiSvYEmiY895H_udKzE',
    appId: '1:181853757614:web:00fac91dc0146b285c4d3f',
    messagingSenderId: '181853757614',
    projectId: 'mobile-anwendungen-4ab02',
    authDomain: 'mobile-anwendungen-4ab02.firebaseapp.com',
    storageBucket: 'mobile-anwendungen-4ab02.appspot.com',
    measurementId: 'G-M5XED5N68P',
  );
}
