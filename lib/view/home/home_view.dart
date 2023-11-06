import 'package:dotted_dashed_line/dotted_dashed_line.dart';
import 'package:fitness/common_widget/round_button.dart';
import 'package:fitness/common_widget/workout_row.dart';
import 'package:fitness/view/main_tab/select_view.dart';
import 'package:fitness/view/workout_tracker/workout_tracker_view.dart';
import 'package:flutter/material.dart';
import 'package:fitness/view/workout_tracker/treino_inferiores.dart';
import 'package:simple_animation_progress_bar/simple_animation_progress_bar.dart';
import 'package:fitness/view/workout_tracker/workour_detail_view.dart';

import '../../common_widget/what_train_row.dart';
import '../../common/colo_extension.dart';
import 'activity_tracker_view.dart';
import 'notification_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List lastWorkoutArr = [
    {
      "name": "Treino de Superiores",
      "image": "assets/img/Workout1.png",
      "kcal": "500",
      "tag":'1',
      "time": "90",
      "progress": 0.3
    },
    {
      "name": "Treino de Inferiores",
      "image": "assets/img/Workout2.png",
      "kcal": "800",
      "tag":'2',
      "time": "120",
      "progress": 0.4
    },
    {
      "name": "Abdominais e Antebraço",
      "image": "assets/img/Workout3.png",
      "kcal": "300",
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

  List<int> showingTooltipOnSpots = [21];

  List waterArr = [
    {"title": "6:00 - 8:00", "subtitle": "600ml"},
    {"title": "9:00- 11:00", "subtitle": "500ml"},
    {"title": "11:00 - 14:00", "subtitle": "1000ml"},
    {"title": "14:00 - 16:00", "subtitle": "700ml"},
    {"title": "16:00 - 21:00", "subtitle": "900ml"},
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Bem vindo,",
                          style: TextStyle(color: TColor.gray, fontSize: 16),
                        ),
                        Text(
                          "Pedro Doy",
                          style: TextStyle(
                              color: TColor.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                    IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const NotificationView(),
                            ),
                          );
                        },
                        icon: Image.asset(
                          "assets/img/notification_active.png",
                          width: 25,
                          height: 25,
                          fit: BoxFit.fitHeight,
                        ))
                  ],
                ),
                SizedBox(
                  height: media.width * 0.05,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  decoration: BoxDecoration(
                    color: TColor.primaryColor2.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Objetivos à serem atingindos",
                        style: TextStyle(
                            color: TColor.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        width: 95,
                        height: 30,
                        child: RoundButton(
                          title: "Veja mais",
                          type: RoundButtonType.bgGradient,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const ActivityTrackerView(),
                              ),
                            );
                          },
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: media.width * 0.05,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: media.width * 0.55,
                        padding: const EdgeInsets.symmetric(
                            vertical: 25, horizontal: 20),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25),
                            boxShadow: const [
                              BoxShadow(color: Colors.black12, blurRadius: 2)
                            ]),
                        child: Row(
                          children: [
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                                child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Ingestão de água",
                                  style: TextStyle(
                                      color: TColor.black,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700),
                                ),
                                ShaderMask(
                                  blendMode: BlendMode.srcIn,
                                  shaderCallback: (bounds) {
                                    return LinearGradient(
                                            colors: TColor.primaryG,
                                            begin: Alignment.centerLeft,
                                            end: Alignment.centerRight)
                                        .createShader(Rect.fromLTRB(
                                            0, 0, bounds.width, bounds.height));
                                  },
                                  child: Text(
                                    "3 Litros",
                                    style: TextStyle(
                                        color: TColor.white.withOpacity(0.7),
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14),
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "Hora à Hora",
                                  style: TextStyle(
                                    color: TColor.gray,
                                    fontSize: 12,
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: waterArr.map((wObj) {
                                    var isLast = wObj == waterArr.last;
                                    return Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              margin:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 4),
                                              width: 10,
                                              height: 10,
                                              decoration: BoxDecoration(
                                                color: TColor.secondaryColor1
                                                    .withOpacity(0.5),
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                              ),
                                            ),
                                            if (!isLast)
                                              DottedDashedLine(
                                                  height: media.width * 0.078,
                                                  width: 0,
                                                  dashColor: TColor
                                                      .secondaryColor1
                                                      .withOpacity(0.5),
                                                  axis: Axis.vertical)
                                          ],
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              wObj["title"].toString(),
                                              style: TextStyle(
                                                color: TColor.gray,
                                                fontSize: 10,
                                              ),
                                            ),
                                            ShaderMask(
                                              blendMode: BlendMode.srcIn,
                                              shaderCallback: (bounds) {
                                                return LinearGradient(
                                                        colors:
                                                            TColor.secondaryG,
                                                        begin: Alignment
                                                            .centerLeft,
                                                        end: Alignment
                                                            .centerRight)
                                                    .createShader(Rect.fromLTRB(
                                                        0,
                                                        0,
                                                        bounds.width,
                                                        bounds.height));
                                              },
                                              child: Text(
                                                wObj["subtitle"].toString(),
                                                style: TextStyle(
                                                    color: TColor.white
                                                        .withOpacity(0.7),
                                                    fontSize: 12),
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    );
                                  }).toList(),
                                )
                              ],
                            ))
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: media.width * 0.05,
                    ),
                    Expanded(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          width: double.maxFinite,
                          height: media.width * 0.5,
                          padding: const EdgeInsets.symmetric(
                              vertical: 25, horizontal: 20),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(25),
                              boxShadow: const [
                                BoxShadow(color: Colors.black12, blurRadius: 2)
                              ]),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Gasto de calorias",
                                  style: TextStyle(
                                      color: TColor.black,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700),
                                ),
                                ShaderMask(
                                  blendMode: BlendMode.srcIn,
                                  shaderCallback: (bounds) {
                                    return LinearGradient(
                                            colors: TColor.primaryG,
                                            begin: Alignment.centerLeft,
                                            end: Alignment.centerRight)
                                        .createShader(Rect.fromLTRB(
                                            0, 0, bounds.width, bounds.height));
                                  },
                                  child: Text(
                                    "760 kCal",
                                    style: TextStyle(
                                        color: TColor.white.withOpacity(0.7),
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14),
                                  ),
                                ),
                                const Spacer(),
                                Container(
                                  alignment: Alignment.center,
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 0, horizontal: 30),
                                  child: SizedBox(
                                    width: media.width * 0.2,
                                    height: media.width * 0.2,
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Container(
                                          width: media.width * 0.15,
                                          height: media.width * 0.15,
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                                colors: TColor.primaryG),
                                            borderRadius: BorderRadius.circular(
                                                media.width * 0.1),
                                          ),
                                          child: FittedBox(
                                            child: Text(
                                              "240kCal\nfaltando",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  color: TColor.white,
                                                  fontSize: 11),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                                               SimpleAnimationProgressBar(
                                                                height: 13,
                                                                width: media.width * 0.9,
                                                                backgroundColor: Colors.grey.shade100,
                                                                foregrondColor: Colors.purple,
                                                                ratio: 0.3,
                                                                direction: Axis.horizontal,
                                                                curve: Curves.fastLinearToSlowEaseIn,
                                                                duration: const Duration(seconds: 3),
                                                                borderRadius: BorderRadius.circular(7.5),
                                                                gradientColor: LinearGradient(
                                                                    colors: TColor.primaryG,
                                                                    begin: Alignment.centerLeft,
                                                                    end: Alignment.centerRight),
                                        ),
                              ]),
                        ),
                      ],
                    ))
                  ],
                ),
                SizedBox(
                  height: media.width * 0.1,
                ),
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
                                            const ActivityTrackerView()));
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
