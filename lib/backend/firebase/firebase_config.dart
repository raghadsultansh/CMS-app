import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBKG5glP8qTSZicqfeM8sMLXBSOn85LZgE",
            authDomain: "c-m-s-app-bxfs9z.firebaseapp.com",
            projectId: "c-m-s-app-bxfs9z",
            storageBucket: "c-m-s-app-bxfs9z.appspot.com",
            messagingSenderId: "177521608799",
            appId: "1:177521608799:web:d223fdb958c705888673ea"));
  } else {
    await Firebase.initializeApp();
  }
}
