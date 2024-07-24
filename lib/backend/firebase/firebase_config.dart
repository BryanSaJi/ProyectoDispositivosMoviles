import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyC1cZtMfXW865diHz6rg0ryycuGTxSmbDg",
            authDomain: "tamales-leyla-gd7cxq.firebaseapp.com",
            projectId: "tamales-leyla-gd7cxq",
            storageBucket: "tamales-leyla-gd7cxq.appspot.com",
            messagingSenderId: "384251270934",
            appId: "1:384251270934:web:a165b2156b89472ef02237"));
  } else {
    await Firebase.initializeApp();
  }
}
