import 'package:dotted_dashed_line/dotted_dashed_line.dart';
import 'package:fitness/common_widget/butao_redondo.dart';
import 'package:fitness/common_widget/coluna_treino.dart';
import 'package:fitness/view/main_tab/selecao.dart';
import 'package:fitness/view/workout_tracker/acompanhamento_treinos.dart';
import 'package:flutter/material.dart';
import 'package:fitness/view/workout_tracker/treino_inferiores.dart';
import 'package:fitness/view/workout_tracker/treino_abdomen.dart';
import 'package:simple_animation_progress_bar/simple_animation_progress_bar.dart';
import 'package:fitness/view/workout_tracker/detalhes_treinp.dart';

import '../../common_widget/coluna_selecionar_treino.dart';
import '../../common/cores.dart';

class TreinosAtivosView extends StatefulWidget {
  const TreinosAtivosView({super.key});

  @override
  State<TreinosAtivosView> createState() => _TreinosAtivosViewState();
}

class _TreinosAtivosViewState extends State<TreinosAtivosView> {
  List lastWorkoutArr = [
    {
      "name": "Treino de Superiores",
      "image": "assets/img/what_5.png",
      "kcal": "Entre 600 a 800",
      "tag":'1',
      "time": "90",
      "progress": 0.3
    },
    {
      "name": "Treino de Inferiores",
      "image": "assets/img/Workout2.png",
      "kcal": "Entre 800 a 1000",
      "tag":'2',
      "time": "120",
      "progress": 0.4
    },
    {
      "name": "Abdominais e Antebraço",
      "image": "assets/img/Workout3.png",
      "kcal": "Entre 300 a 500",
      "tag":'3',
      "time": "60",
      "progress": 0.7
    },
  ];
    List whatArr = [
    {
      "image": "assets/img/what_4-removebg-preview.png",
      "title": "Treinos de superiores",
      "exercises": "11 exercícios",
      "tag": "1",
      "time": "90 minutos"
    },
    {
      "image": "assets/img/what_2.png",
      "title": "Treino de inferiores",
      "exercises": "12 exercícios",
      "tag": "2",
      "time": "120 minutos"
    },
    {
      "image": "assets/img/what_3.png",
      "title": "Treino de abdominal e antebraço",
      "exercises": "10 exercícios",
      "tag": "3",
      "time": "60 minutos"
    }
  ];
  @override
  Widget build(BuildContext context) {
      var media = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: TColor.white,
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
      backgroundColor: TColor.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Treinos",
                      style: TextStyle(
                          color: TColor.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w700),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const WorkoutTrackerView(),
                          ),
                        );
                      },
                      child: Text(
                        "Veja mais",
                        style: TextStyle(
                            color: TColor.gray,
                            fontSize: 14,
                            fontWeight: FontWeight.w700),
                      ),
                    )
                  ],
                ),
                ListView.builder(
                    padding: EdgeInsets.zero,
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: lastWorkoutArr.length,
                    itemBuilder: (context, index) {
                      var wObj = lastWorkoutArr[index] as Map? ?? {};
                      var aObj = whatArr[index] as Map? ?? {};

                      return InkWell(
                          onTap: () {
                             switch(wObj["tag"].toString()){
                              case '1':
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            WorkoutDetailView(dObj: aObj,)));
                                break;
                              case '2':
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                          TreinoInferiores(dObj: aObj,)));
                                break;
                              case '3':
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                          TreinoAbdomen(dObj: aObj,)));
                                break;
                            }
                          },
                          child: WorkoutRow(wObj: wObj));
                    }),
                SizedBox(
                  height: media.width * 0.1,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}