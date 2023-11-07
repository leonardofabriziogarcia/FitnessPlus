import 'package:fitness/common/cores.dart';
import 'package:fitness/common_widget/icone_proxima_coluna.dart';
import 'package:fitness/common_widget/butao_redondo.dart';
import 'package:fitness/view/workout_tracker/exercises_stpe_details.dart';
import 'package:fitness/view/workout_tracker/calendario_treinos.dart';
import 'package:flutter/material.dart';

import '../../common_widget/set_exercicios.dart';

class WorkoutDetailView extends StatefulWidget {
  final Map dObj;
  const WorkoutDetailView({super.key, required this.dObj});

  @override
  State<WorkoutDetailView> createState() => _WorkoutDetailViewState();
}

class _WorkoutDetailViewState extends State<WorkoutDetailView> {
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
      "name": "Set 1 (Peito/Tríceps)",
      "set": [
        {"image": "assets/img/img_1.png", "title": "Aquecimento", "value": "03:00"},
        {
          "image": "assets/img/supinoreto.jpg",
          "title": "Supino reto com halter",
          "value": "4 séries de 12x"
        },
        {
          "image": "assets/img/descanso.jpeg",
          "title": "Descanso",
          "value": "02:00"
        },
        {"image": "assets/img/crucifixo_polia.jpg", "title": "Crucifixo na polia", "value": "4 séries de 12x"},
        {
          "image": "assets/img/descanso.jpeg",
          "title": "Descanso",
          "value": "02:00"
        },
        {"image": "assets/img/supino_inclinado.jpeg", "title": "Supino inclinado com halter", "value": " 4 séries de 12x"},
        {
          "image": "assets/img/descanso.jpeg",
          "title": "Descanso",
          "value": "02:00"
        },

        {
          "image": "assets/img/triceps_frances.jpg",
          "title": "Tríceps francês na polia",
          "value": "4 séries de 12x"
        },
        {
          "image": "assets/img/descanso.jpeg",
          "title": "Descanso",
          "value": "02:00"
        },
        {
          "image": "assets/img/triceps_testa.jpg",
          "title": "Tríceps testa",
          "value": "4 séries de 12x"
        },
        {
          "image": "assets/img/descanso.jpeg",
          "title": "Descanso",
          "value": "02:00"
        },
        {
          "image": "assets/img/triceps_coice.jpg",
          "title": "Tríceps coice",
          "value": "4 séries de 12x"
        },
      ],
    },
    {
      "name": "Set 2 (Costas/Bíceps)",
      "set": [
        {"image": "assets/img/img_1.png", "title": "Aquecimento", "value": "03:00"},
        {
          "image": "assets/img/remada_curvada.jpg",
          "title": "Remada curvada com barra",
          "value": "4 séries de 12x"
        },
        {
          "image": "assets/img/descanso.jpeg",
          "title": "Descanso",
          "value": "02:00"
        },
        {"image": "assets/img/remada_serrote.jpg", "title": "Remada serrote", "value": "4 séries de 12x"},
         {
          "image": "assets/img/descanso.jpeg",
          "title": "Descanso",
          "value": "02:00"
        },
        {"image": "assets/img/remada_banco.jpg", "title": "Remada no banco inclinado com halter", "value": "4 séries de 12x"},
        {
          "image": "assets/img/descanso.jpeg",
          "title": "Descanso",
          "value": "02:00"
        },

        {
          "image": "assets/img/rosca_concentrada.jpg",
          "title": "Rosca concentrada com halter",
          "value": "4 séries de 12x"
        },
        {
          "image": "assets/img/descanso.jpeg",
          "title": "Descanso",
          "value": "02:00"
        },
        {
          "image": "assets/img/rosca_direta.jpg",
          "title": "Rosca direta",
          "value": "4 séries de 12x"
        },
        {
          "image": "assets/img/descanso.jpeg",
          "title": "Descanso",
          "value": "02:00"
        },
        {
          "image": "assets/img/rosca_martelo.jpg",
          "title": "Rosca martelo",
          "value": "4 séries de 12x"
        },
      ],
    }
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
                  "assets/img/what_5.png",
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
                                  "${widget.dObj["exercises"].toString()} | ${widget.dObj["time"].toString()} | Queima de 330 calorias",
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
                      // IconTitleNextRow(
                      //     icon: "assets/img/time.png",
                      //     title: "Schedule Workout",
                      //     time: "5/27, 09:00 AM",
                      //     color: TColor.primaryColor2.withOpacity(0.3),
                      //     onPressed: () {

                      //         Navigator.push(context, MaterialPageRoute(builder: (context) => const WorkoutScheduleView() )  );
                      //     }),
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
                                    builder: (context) => ExercisesStepDetails(
                                      eObj: obj,
                                    ),
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
