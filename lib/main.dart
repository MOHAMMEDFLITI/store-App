import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:store_app/store_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: 'AIzaSyDBGc-TJ5Y_3HS8MmW6KTx4cjKtGs1G4no',
        appId: '1:197378216595:android:a7acc3062b3de0585cb366',
        messagingSenderId: '197378216595',
        projectId: 'store-app-55ec3',),
  );

  runApp(const StoreApp());
}
