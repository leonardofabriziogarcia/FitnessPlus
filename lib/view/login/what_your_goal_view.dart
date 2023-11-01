import 'package:carousel_slider/carousel_slider.dart';
import 'package:fitness/view/login/welcome_view.dart';
import 'package:flutter/material.dart';

import '../../common/colo_extension.dart';
import '../../common_widget/round_button.dart';

class WhatYourGoalView extends StatefulWidget {
  const WhatYourGoalView({super.key});

  @override
  State<WhatYourGoalView> createState() => _WhatYourGoalViewState();
}

class _WhatYourGoalViewState extends State<WhatYourGoalView> {
  CarouselController buttonCarouselController = CarouselController();

  List goalArr = [
    {
      "image": "assets/img/goal_1.png",
      "title": "Aprimorar o físico",
      "subtitle":
          "Já possuo um físico com uma certa \nquantidade de músculo,porém, \nquero desenvolver ainda mais meu corpo"
    },
    {
      "image": "assets/img/goal_2.png",
      "title": "Seco e magro",
      "subtitle":
          "Eu sou um magro gordinho. Pareço ser seco porém\nnão tenho nenhum músculo. Quero crescer \na minha massa muscular da maneira correta"
    },
    {
      "image": "assets/img/goal_3.png",
      "title": "Perder Gordura",
      "subtitle":
          "Tenho cerca de 100kg. \nQuero perder essa gordura e entrar em forma"
    },
  ];

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: TColor.white,
      body: SafeArea(
          child: Stack(
        children: [
          Center(
            child: CarouselSlider(
              items: goalArr
                  .map(
                    (gObj) => Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: TColor.primaryG,
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      padding: EdgeInsets.symmetric(
                          vertical: media.width * 0.05, horizontal: 20),
                      alignment: Alignment.center,
                      child: FittedBox(
                        child: Column(
                          children: [
                            Image.asset(
                              gObj["image"].toString(),
                              width: media.width * 0.2,
                              fit: BoxFit.fitWidth,
                            ),
                            SizedBox(
                              height: media.width * 0.05,
                            ),
                            Text(
                              gObj["title"].toString(),
                              style: TextStyle(
                                  color: TColor.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700),
                            ),
                            Container(
                              width: media.width * 0.1,
                              height: 1,
                              color: TColor.white,
                            ),
                            SizedBox(
                              height: media.width * 0.02,
                            ),
                            Text(
                              gObj["subtitle"].toString(),
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(color: TColor.white, fontSize: 9),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                  .toList(),
              carouselController: buttonCarouselController,
              options: CarouselOptions(
                autoPlay: false,
                enlargeCenterPage: true,
                viewportFraction: 0.7,
                aspectRatio: 0.74,
                initialPage: 0,
                
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            width: media.width,
            child: Column(
              children: [
                SizedBox(
                  height: media.width * 0.05,
                ),
                Text(
                  "Qual o seu objetivo aqui?",
                  style: TextStyle(
                      color: TColor.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  "Aqui temos 3 opções, veja a que se encaixa melhor no seu caso",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: TColor.gray, fontSize: 11),
                ),
                const Spacer(),
                SizedBox(
                  height: media.width * 0.2,
                ),
                RoundButton(
                    title: "Confirmar",
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const WelcomeView()));
                    }),
                SizedBox(
                  height: media.width * 0.05,
                ),    
              ],
            ),
          )
        ],
      )),
    );
  }
}
