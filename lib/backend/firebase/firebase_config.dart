import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDdYSNsham6Ych5pGUtYmk-KZdXePIpJPU",
            authDomain: "cms2024-8760c.firebaseapp.com",
            projectId: "cms2024-8760c",
            storageBucket: "cms2024-8760c.appspot.com",
            messagingSenderId: "1087800138241",
            appId: "1:1087800138241:web:27adbd857adbff191cfe00",
            measurementId: "G-KMVZ4ZNJBZ"));
  } else {
    await Firebase.initializeApp();
  }
}
