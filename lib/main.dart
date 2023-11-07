
import 'package:fitness/view/main_tab/aba_principal.dart';
import 'package:fitness/view/login/cadastro.dart';
import 'package:fitness/view/on_boarding/primeira_pagina.dart';
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
      home: const MainTabView(),
    );
  }
}

