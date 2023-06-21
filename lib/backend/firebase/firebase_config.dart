import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCID55bEpZ_oV6lB2GoHEG-DlPUuqufCJ8",
            authDomain: "pawrents-1eadb.firebaseapp.com",
            projectId: "pawrents-1eadb",
            storageBucket: "pawrents-1eadb.appspot.com",
            messagingSenderId: "858349012598",
            appId: "1:858349012598:web:ef17f7451602f92b228157",
            measurementId: "G-JEEL30N6RG"));
  } else {
    await Firebase.initializeApp();
  }
}
