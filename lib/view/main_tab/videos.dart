import 'package:fitness/common_widget/butao_redondo.dart';
import 'package:fitness/common_widget/coluna_treino.dart';
import 'package:fitness/common_widget/coluna_videos.dart';
import 'package:fitness/view/videos/abdominal_bicileta.dart';
import 'package:fitness/view/videos/abdominal_canivete.dart';
import 'package:fitness/view/videos/abdominal_infra.dart';
import 'package:fitness/view/videos/abdominal_remador.dart';
import 'package:fitness/view/videos/abdominal_reto.dart';
import 'package:fitness/view/videos/agachamento_bulgaro.dart';
import 'package:fitness/view/videos/agachamento_globet.dart';
import 'package:fitness/view/videos/crucifixo_polia.dart';
import 'package:fitness/view/videos/deadlift.dart';
import 'package:fitness/view/videos/deadlift_romento.dart';
import 'package:fitness/view/videos/desenvolvimento_ombros.dart';
import 'package:fitness/view/videos/elevacao_frontal.dart';
import 'package:fitness/view/videos/elevacao_lateral.dart';
import 'package:fitness/view/videos/lunges.dart';
import 'package:fitness/view/videos/panturrilha.dart';
import 'package:fitness/view/videos/remada_banco.dart';
import 'package:fitness/view/videos/remada_concentrada.dart';
import 'package:fitness/view/videos/remada_curvada.dart';
import 'package:fitness/view/videos/remada_serrote.dart';
import 'package:fitness/view/videos/rosca_concentrada.dart';
import 'package:fitness/view/videos/rosca_inversa.dart';
import 'package:fitness/view/videos/rosca_martelo.dart';
import 'package:fitness/view/videos/rosca_punho.dart';
import 'package:fitness/view/videos/rotacao_russa.dart';
import 'package:fitness/view/videos/supino_inclinado.dart';
import 'package:fitness/view/videos/supino_reto.dart';
import 'package:fitness/view/videos/triceps_coice.dart';
import 'package:fitness/view/videos/triceps_frances.dart';
import 'package:fitness/view/videos/triceps_testa.dart';
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
      "tag": "4"
    },
    {
      "image": "assets/img/triceps_testa.jpg",
      "title": "Tríceps testa",
      "value": "4 séries de 12x",
      "tag": "5"
    },
    {
      "image": "assets/img/triceps_coice.jpg",
      "title": "Tríceps coice",
      "value": "4 séries de 12x",
      "tag": "6"
    },
    {
      "image": "assets/img/remada_curvada.jpg",
      "title": "Remada curvada com barra",
      "value": "4 séries de 12x",
      "tag": "7"
    },
    {
      "image": "assets/img/remada_serrote.jpg",
      "title": "Remada serrote",
      "value": "4 séries de 12x",
      "tag": "8"
    },
    {
      "image": "assets/img/remada_banco.jpg",
      "title": "Remada no banco inclinado com halter",
      "value": "4 séries de 12x",
      "tag": "9"
    },
    {
      "image": "assets/img/rosca_concentrada.jpg",
      "title": "Rosca concentrada com halter",
      "value": "4 séries de 12x",
      "tag": "10"
    },
    {
      "image": "assets/img/rosca_direta.jpg",
      "title": "Rosca direta",
      "value": "4 séries de 12x",
      "tag": "11"
    },
    {
      "image": "assets/img/rosca_martelo.jpg",
      "title": "Rosca martelo",
      "value": "4 séries de 12x",
      "tag": "12"
    },
    {
      "image": "assets/img/bulgaro.jpg",
      "title": "Agachamento búlgaro com halter",
      "value": "4 séries de 12x",
      "tag": "13"
    },
    {
      "image": "assets/img/panturrilha.jpeg",
      "title": "Panturrilha livre",
      "value": "4 séries de 12x",
      "tag": "14"
    },
    {
      "image": "assets/img/stiff_halter.jpg",
      "title": "Deadlift com halter",
      "value": " 4 séries de 12x",
      "tag": "15"
    },
    {
      "image": "assets/img/agachamento_globet.jpg",
      "title": "Agachamento globet",
      "value": "4 séries de 12x",
      "tag": "16"
    },
    {
      "image": "assets/img/lunges.jpg",
      "title": "Lunges com halter",
      "value": "4 séries de 12x",
      "tag": "17"
    },
    {
      "image": "assets/img/deadlift_unilateral.jpg",
      "title": "Deadlift romento unilateral",
      "value": "4 séries de 12x",
      "tag": "18"
    },
    {
      "image": "assets/img/elevacao_lateral.jpg",
      "title": "Elevação lateral",
      "value": "4 séries de 12x",
      "tag": "19"
    },
    {
      "image": "assets/img/elevacao_frontal.jpg",
      "title": "Elevação frontal unilateral",
      "value": "4 séries de 12x",
      "tag": "20"
    },
    {
      "image": "assets/img/desenvolvimento.jpeg",
      "title": "Desenvolvimento de ombros",
      "value": "4 séries de 12x",
      "tag": "21"
    },
    {
      "image": "assets/img/abdominal_reto.jpg",
      "title": "Abdominal reto",
      "value": "30x",
      "tag": "22"
    },
    {
      "image": "assets/img/Abdominal_infra.jpg",
      "title": "Abdominal infra",
      "value": "15x",
      "tag": "23"
    },
    {
      "image": "assets/img/abdominal_remadorjpg.jpg",
      "title": "Abdominal remador",
      "value": "20x",
      "tag": "24"
    },
    {
      "image": "assets/img/abdominal_canivete.jpeg",
      "title": "Abdominal canivete",
      "value": "12x",
      "tag": "25"
    },
    {
      "image": "assets/img/abdominal_bicicleta.jpg",
      "title": "Abdominal Bicicleta",
      "value": "30x",
      "tag": "26"
    },
    {
      "image": "assets/img/rotacao_russa.jpg",
      "title": "Rotação Russa",
      "value": "40x",
      "tag": "27"
    },
    {
      "image": "assets/img/rosca_inversa.png",
      "title": "Rosca direta invertida",
      "value": "4 séries de 12x",
      "tag": "28"
    },
    {
      "image": "assets/img/rosca_punho.jpg",
      "title": "Rosca punho inversa",
      "value": "4 séries de 12x",
      "tag": "29"
    },
    {
      "image": "assets/img/rosca_martelo.png",
      "title": "Rosca punho martelo",
      "value": "4 séries de 12x",
      "tag": "30"
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
                                            const SupinoReto()));
                                break;
                              case '2':
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Crucifixo()));
                                break;
                              case '3':
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const SupinoInclinado()));
                                break;
                              case '4':
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const TricepsFrances()));
                                break;
                              case '5':
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const TricepsTesta()));
                                break;
                              case '6':
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const TricepsCoice()));
                                break;
                              case '7':
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const RemadaCurvada()));
                                break;
                              case '8':
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const RemadaSerrote()));
                                break;
                              case '9':
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const RemadaBanco()));
                                break;
                              case '10':
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const RemadaConcentrada()));
                                break;
                              case '11':
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const RoscaConcentrada()));
                                break;
                              case '12':
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const RoscaMartelo()));
                                break;
                              case '13':
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const AgachamentoBulgaro()));
                                break;
                              case '14':
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Panturrilha()));
                                break;
                              case '15':
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Deadlift()));
                                break;
                              case '16':
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const AgachamentoGlobet()));
                                break;
                              case '17':
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Lunges()));
                                break;
                              case '18':
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const DeadliftRomento()));
                                break;
                              case '19':
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const ElevacaoLateral()));
                                break;
                              case '20':
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const ElevacaoFrontal()));
                                break;
                              case '21':
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const DesenvolvimentoOmbros()));
                                break;
                              case '22':
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const AbdominalReto()));
                                break;
                              case '23':
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const AbdominalInfra()));
                                break;
                              case '24':
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const AbdominalRemador()));
                                break;
                              case '25':
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const AbdominalCanivete()));
                                break;
                              case '26':
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const AbdominalBicicleta()));
                                break;
                              case '27':
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const RotacaoRussa()));
                                break;
                              case '28':
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const RoscaInversa()));
                                break;
                              case '29':
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const RoscaMartelo()));
                                break;
                                
                            }

                            //  JAPOLE ESCREVER AQUI
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
