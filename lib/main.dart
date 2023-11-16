
import 'package:fitness/view/main_tab/aba_principal.dart';
import 'package:fitness/view/main_tab/videos.dart';
import 'package:fitness/view/login/cadastro.dart';
import 'package:fitness/view/on_boarding/primeira_pagina.dart';
import 'package:fitness/view/videos/crucifixo_polia.dart';
import 'package:fitness/view/videos/supino_inclinado.dart';
import 'package:fitness/view/videos/supino_reto.dart';
import 'package:flutter/material.dart';

import 'common/cores.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FitnessPlus',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: TColor.primaryColor1,
        fontFamily: "Poppins"
      ),
<<<<<<< HEAD
      home: const MainTabView(),
     
=======
      // ***home: const MainTabView(),
      home: SupinoInclinado(),
>>>>>>> 45b5993e7327c9177728274a4b7e2e5b1f198a4d
    );
  }
}