import 'package:firebase_core/firebase_core.dart';
import 'package:fitness/firebase_options.dart';
import 'package:fitness/view/main_tab/aba_principal.dart';
import 'package:fitness/view/login/cadastro.dart';
import 'package:flutter/material.dart';
import 'common/cores.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
    );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FitnessPlus',
      debugShowCheckedModeBanner: false,
      theme:
          ThemeData(primaryColor: TColor.primaryColor1, fontFamily: "Poppins"),

      home: const SignUpView(),
      // home: RemadaConcentrada(),
    );
  }
}
