import 'package:fitness/common/cores.dart';
import 'package:fitness/common_widget/icone_proxima_coluna.dart';
import 'package:fitness/common_widget/butao_redondo.dart';
import 'package:fitness/view/main_tab/videos.dart';
import 'package:fitness/view/workout_tracker/exercises_stpe_details.dart';
import 'package:fitness/view/workout_tracker/calendario_treinos.dart';
import 'package:flutter/material.dart';

import '../../common_widget/set_exercicios.dart';

class TreinoInferiores extends StatefulWidget {
  final Map dObj;
  const TreinoInferiores({super.key, required this.dObj});

  @override
  State<TreinoInferiores> createState() => _TreinoInferioresState();
}

class _TreinoInferioresState extends State<TreinoInferiores> {
  List latestArr = [
    {
      "image": "assets/img/Workout1.png",
      "title": "Treino de superiores  ",
      "time": "Hoje, 15:00"
    },
    {
      "image": "assets/img/Workout2.png",
      "title": "Treino de inferiores",
      "time": "Nov 11, 16:00"
    },
  ];

  List youArr = [
    {"image": "assets/img/barbell.png", "title": "Halter"},
    {"image": "assets/img/treadmill.png", "title": "Esteira"},
    {"image": "assets/img/bottle.png", "title": "Garrafa de água 1L"},
  ];

  List exercisessupArr = [
    {
      "name": "Set 1 (Perna/Ombro)",
      "set": [
        {"image": "assets/img/img_1.png", "title": "Aquecimento", "value": "03:00"},
        {
          "image": "assets/img/bulgaro.jpg",
          "title": "Agachamento búlgaro com halter",
          "value": "4 séries de 12x"
        },
        {
          "image": "assets/img/descanso.jpeg",
          "title": "Descanso",
          "value": "02:00"
        },
        {"image": "assets/img/panturrilha.jpeg", "title": "Panturrilha livre", "value": "4 séries de 12x"},
        {
          "image": "assets/img/descanso.jpeg",
          "title": "Descanso",
          "value": "02:00"
        },
        {"image": "assets/img/stiff_halter.jpg", "title": "Deadlift com halter", "value": " 4 séries de 12x"},
        {
          "image": "assets/img/descanso.jpeg",
          "title": "Descanso",
          "value": "02:00"
        },

        {
          "image": "assets/img/agachamento_globet.jpg",
          "title": "Agachamento globet",
          "value": "4 séries de 12x"
        },
        {
          "image": "assets/img/descanso.jpeg",
          "title": "Descanso",
          "value": "02:00"
        },
        {
          "image": "assets/img/lunges.jpg",
          "title": "Lunges com halter",
          "value": "4 séries de 12x"
        },
        {
          "image": "assets/img/descanso.jpeg",
          "title": "Descanso",
          "value": "02:00"
        },
        {
          "image": "assets/img/deadlift_unilateral.jpg",
          "title": "Deadlift romento unilateral",
          "value": "4 séries de 12x"
        },
           {
          "image": "assets/img/descanso.jpeg",
          "title": "Descanso",
          "value": "02:00"
        },
           {
          "image": "assets/img/elevacao_lateral.jpg",
          "title": "Elevação lateral",
          "value": "4 séries de 12x"
        },
           {
          "image": "assets/img/descanso.jpeg",
          "title": "Descanso",
          "value": "02:00"
        },
           {
          "image": "assets/img/elevacao_frontal.jpg",
          "title": "Elevação frontal unilateral",
          "value": "4 séries de 12x"
        },
           {
          "image": "assets/img/descanso.jpeg",
          "title": "Descanso",
          "value": "02:00"
        },
           {
          "image": "assets/img/desenvolvimento.jpeg",
          "title": "Desenvolvimento de ombros",
          "value": "4 séries de 12x"
        },
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Container(
      decoration:
          BoxDecoration(gradient: LinearGradient(colors: TColor.primaryG)),
      child: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              backgroundColor: Colors.transparent,
              centerTitle: true,
              elevation: 0,
              leading: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  margin: const EdgeInsets.all(8),
                  height: 40,
                  width: 40,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: TColor.lightGray,
                      borderRadius: BorderRadius.circular(10)),
                  child: Image.asset(
                    "assets/img/black_btn.png",
                    width: 15,
                    height: 15,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            SliverAppBar(
              backgroundColor: Colors.transparent,
              centerTitle: true,
              elevation: 0,
              leadingWidth: 0,
              leading: Container(),
              expandedHeight: media.width * 0.7,
              flexibleSpace: Align(
                alignment: Alignment.center,
                child: Image.asset(
                  "assets/img/what_2.png",
                  width: media.width * 0.9,
                  height: media.width * 0.9,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ];
        },
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          decoration: BoxDecoration(
              color: TColor.white,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(25), topRight: Radius.circular(25))),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Stack(
              children: [
                SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: 50,
                        height: 4,
                        decoration: BoxDecoration(
                            color: TColor.gray.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(3)),
                      ),
                      SizedBox(
                        height: media.width * 0.05,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  widget.dObj["title"].toString(),
                                  style: TextStyle(
                                      color: TColor.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700),
                                ),
                                Text(
                                  "${widget.dObj["exercises"].toString()} | ${widget.dObj["time"].toString()}",
                                  style: TextStyle(
                                      color: TColor.gray, fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Image.asset(
                              "assets/img/fav.png",
                              width: 15,
                              height: 15,
                              fit: BoxFit.contain,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: media.width * 0.05,
                      ),
                      SizedBox(
                        height: media.width * 0.02,
                      ),
                      IconTitleNextRow(
                          icon: "assets/img/difficulity.png",
                          title: "Dificuldade",
                          time: "Intermediária",
                          color: TColor.secondaryColor2.withOpacity(0.3),
                          onPressed: () {}),
                      SizedBox(
                        height: media.width * 0.05,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "O que você vai precisar",
                            style: TextStyle(
                                color: TColor.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w700),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "${youArr.length} itens",
                              style:
                                  TextStyle(color: TColor.gray, fontSize: 12),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: media.width * 0.5,
                        child: ListView.builder(
                            padding: EdgeInsets.zero,
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemCount: youArr.length,
                            itemBuilder: (context, index) {
                              var yObj = youArr[index] as Map? ?? {};
                              return Container(
                                  margin: const EdgeInsets.all(8),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: media.width * 0.35,
                                        width: media.width * 0.35,
                                        decoration: BoxDecoration(
                                            color: TColor.lightGray,
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                        alignment: Alignment.center,
                                        child: Image.asset(
                                          yObj["image"].toString(),
                                          width: media.width * 0.2,
                                          height: media.width * 0.2,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          yObj["title"].toString(),
                                          style: TextStyle(
                                              color: TColor.black,
                                              fontSize: 12),
                                        ),
                                      )
                                    ],
                                  ));
                            }),
                      ),
                      SizedBox(
                        height: media.width * 0.05,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Exercícios",
                            style: TextStyle(
                                color: TColor.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w700),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "${exercisessupArr.length} Sets",
                              style:
                                  TextStyle(color: TColor.gray, fontSize: 12),
                            ),
                          )
                        ],
                      ),
                      ListView.builder(
                          padding: EdgeInsets.zero,
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: exercisessupArr.length,
                          itemBuilder: (context, index) {
                            var sObj = exercisessupArr[index] as Map? ?? {};
                            return ExercisesSetSection(
                              sObj: sObj,
                              onPressed: (obj) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const VideoView(),
                                  ),
                                );
                              },
                            );
                          }),
                      SizedBox(
                        height: media.width * 0.1,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
