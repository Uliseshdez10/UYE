import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyATxRFoLnSbsX86akv04apx0yHRWgAQqyI",
            authDomain: "whatsapp-y-reels-55e47.firebaseapp.com",
            projectId: "whatsapp-y-reels-55e47",
            storageBucket: "whatsapp-y-reels-55e47.appspot.com",
            messagingSenderId: "758629268947",
            appId: "1:758629268947:web:b53e7a7fa4d1bd25e7c326",
            measurementId: "G-H0NDXL7ZK0"));
  } else {
    await Firebase.initializeApp();
  }
}
