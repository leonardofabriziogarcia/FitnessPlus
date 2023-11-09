import 'package:fitness/common_widget/butao_redondo.dart';
import 'package:fitness/common_widget/coluna_treino.dart';
import 'package:fitness/common_widget/coluna_videos.dart';
import 'package:flutter/material.dart';

import '../../common/cores.dart';

class VideoView extends StatefulWidget {
  const VideoView({super.key});

  @override
  State<VideoView> createState() => _VideoViewState();
}

class _VideoViewState extends State<VideoView> {
  List lastWorkoutArr = [
    {
      "image": "assets/img/supinoreto.jpg",
      "title": "Supino reto com halter",
      "value": "4 séries de 12x",
      "tag": "1"
    },
    {
      "image": "assets/img/crucifixo_polia.jpg",
      "title": "Crucifixo na polia",
      "value": "4 séries de 12x",
      "tag": "2"
    },
    {
      "image": "assets/img/supino_inclinado.jpeg",
      "title": "Supino inclinado com halter",
      "value": " 4 séries de 12x",
      "tag": "3"
    },
    {
      "image": "assets/img/triceps_frances.jpg",
      "title": "Tríceps francês na polia",
      "value": "4 séries de 12x",
      "tag":"4"
    },
    {
      "image": "assets/img/triceps_testa.jpg",
      "title": "Tríceps testa",
      "value": "4 séries de 12x",
      "tag":"5"

    },
    {
      "image": "assets/img/triceps_coice.jpg",
      "title": "Tríceps coice",
      "value": "4 séries de 12x",
      "tag":"6"

    },
    {
      "image": "assets/img/remada_curvada.jpg",
      "title": "Remada curvada com barra",
      "value": "4 séries de 12x",
      "tag":"7"

    },
    {
      "image": "assets/img/remada_serrote.jpg",
      "title": "Remada serrote",
      "value": "4 séries de 12x",
      "tag":"8"
    },
    {
      "image": "assets/img/remada_banco.jpg",
      "title": "Remada no banco inclinado com halter",
      "value": "4 séries de 12x",
      "tag":"9"

    },
    {
      "image": "assets/img/rosca_concentrada.jpg",
      "title": "Rosca concentrada com halter",
      "value": "4 séries de 12x",
      "tag":"10"

    },
    {
      "image": "assets/img/rosca_direta.jpg",
      "title": "Rosca direta",
      "value": "4 séries de 12x",
      "tag":"11"

    },
    {
      "image": "assets/img/rosca_martelo.jpg",
      "title": "Rosca martelo",
      "value": "4 séries de 12x",
      "tag":"12"

    },
    {
      "image": "assets/img/bulgaro.jpg",
      "title": "Agachamento búlgaro com halter",
      "value": "4 séries de 12x",
      "tag":"13"

    },
    {
      "image": "assets/img/panturrilha.jpeg",
      "title": "Panturrilha livre",
      "value": "4 séries de 12x",
      "tag":"14"

    },
    {
      "image": "assets/img/stiff_halter.jpg",
      "title": "Deadlift com halter",
      "value": " 4 séries de 12x",     
       "tag":"15"

    },
    {
      "image": "assets/img/agachamento_globet.jpg",
      "title": "Agachamento globet",
      "value": "4 séries de 12x",       
      "tag":"16"

    },
    {
      "image": "assets/img/lunges.jpg",
      "title": "Lunges com halter",
      "value": "4 séries de 12x",
      "tag":"17"

    },
    {
      "image": "assets/img/deadlift_unilateral.jpg",
      "title": "Deadlift romento unilateral",
      "value": "4 séries de 12x",
      "tag":"18"

    },
    {
      "image": "assets/img/elevacao_lateral.jpg",
      "title": "Elevação lateral",
      "value": "4 séries de 12x",
      "tag":"19"

    },
    {
      "image": "assets/img/elevacao_frontal.jpg",
      "title": "Elevação frontal unilateral",
      "value": "4 séries de 12x",
      "tag":"20"

    },
    {
      "image": "assets/img/desenvolvimento.jpeg",
      "title": "Desenvolvimento de ombros",
      "value": "4 séries de 12x",
      "tag":"21"
    },
    {
          "image": "assets/img/abdominal_reto.jpg",
          "title": "Abdominal reto",
          "value": "30x",
          "tag":"22"
        },
        {
          "image": "assets/img/Abdominal_infra.jpg",
          "title": "Abdominal infra",
          "value": "15x",
          "tag":"23"
        },
        {
          "image": "assets/img/abdominal_remadorjpg.jpg",
          "title": "Abdominal remador",
          "value": "20x",
          "tag":"24"
        },
        {
          "image": "assets/img/abdominal_canivete.jpeg",
          "title": "Abdominal canivete",
          "value": "12x",
          "tag":"25"
        },
        {
          "image": "assets/img/abdominal_bicicleta.jpg",
          "title": "Abdominal Bicicleta",
          "value": "30x",
          "tag":"26"
        },
        {
          "image": "assets/img/rotacao_russa.jpg",
          "title": "Rotação Russa",
          "value": "40x",
          "tag":"27"
        },
        {
          "image": "assets/img/rosca_inversa.png",
          "title": "Rosca direta invertida",
          "value": "4 séries de 12x",
          "tag":"28"
        },
        {
          "image": "assets/img/rosca_punho.jpg",
          "title": "Rosca punho inversa",
          "value": "4 séries de 12x",
          "tag":"29"

        },
        {
          "image": "assets/img/rosca_martelo.png",
          "title": "Rosca punho martelo",
          "value": "4 séries de 12x",
          "tag":"30"

        },
  ];

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: TColor.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListView.builder(
                    padding: EdgeInsets.zero,
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: lastWorkoutArr.length,
                    itemBuilder: (context, index) {
                      var wObj = lastWorkoutArr[index] as Map? ?? {};
                      return InkWell(
                          child: VideoRow(wObj: wObj),
                          onTap: () {
                            switch (wObj["tag"].toString()) {
                              case '1':
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            WorkoutRow(wObj: wObj)));
                                break;
                              //  JAPOLE ESCREVER AQUI
                            }
                          });
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
