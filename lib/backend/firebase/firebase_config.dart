import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCCzFedQsi5X-JPrQLHJOl5Mbp8GMIGYVw",
            authDomain: "gearchain-257e8.firebaseapp.com",
            projectId: "gearchain-257e8",
            storageBucket: "gearchain-257e8.appspot.com",
            messagingSenderId: "101625109020",
            appId: "1:101625109020:web:828595c1c39125619a5dd9",
            measurementId: "G-QXED3HCLWN"));
  } else {
    await Firebase.initializeApp();
  }
}
