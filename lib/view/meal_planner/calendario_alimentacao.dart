import 'package:calendar_agenda/calendar_agenda.dart';
import 'package:flutter/material.dart';

import '../../common/cores.dart';
import '../../common_widget/calendario_alimentacao.dart';
import '../../common_widget/coluna_nutricao.dart';

class MealScheduleView extends StatefulWidget {
  const MealScheduleView({super.key});

  @override
  State<MealScheduleView> createState() => _MealScheduleViewState();
}

class _MealScheduleViewState extends State<MealScheduleView> {

  List breakfastArr = [
    {
      "name": "Pão integral com patê de frango",
      "image": "assets/img/pao.png"
    },
    {"name": "Frutas","image": "assets/img/orange.png"},
    {"name": "Água, vitamina de fruta ou suco natural","image": "assets/img/juice.png"},
  ];

  List lunchArr = [
    {
      "name": "Arroz, feijão, carnes com pouco percentual de gordura(frango, peixe) ",
      "image": "assets/img/chicken.png"
    },
    {"name": "Legumes e verduras","image": "assets/img/legumes.png"},
    {
      "name": "Suco natural ou água",
      "image": "assets/img/juice.png"
    },
  ];
  List snacksArr = [
    {"name": "Vitamina ou Shake Whey Protein","image": "assets/img/whey_shake.png"},
    {
      "name": "Frutas",
      "image": "assets/img/orange.png"
    },
  ];
  List dinnerArr = [
    {"name": "Arroz, salada, carne com pouco percentual de gordura ou ovo", "image": "assets/img/chicken.png"},
    {"name": "Suco natural ou água","image": "assets/img/juice.png"},
  ];

  @override
  void initState() {
    super.initState();
  }

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
        title: Text(
          "Rotina de alimentação",
          style: TextStyle(
              color: TColor.black, fontSize: 16, fontWeight: FontWeight.w700),
        ),
      ),
      backgroundColor: TColor.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Café da manhã",
                        style: TextStyle(
                            color: TColor.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
                ListView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: breakfastArr.length,
                    itemBuilder: (context, index) {
                      var mObj = breakfastArr[index] as Map? ?? {};
                      return MealFoodScheduleRow(
                        mObj: mObj,
                        index: index,
                      );
                    }),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Almoço",
                        style: TextStyle(
                            color: TColor.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
                ListView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: lunchArr.length,
                    itemBuilder: (context, index) {
                      var mObj = lunchArr[index] as Map? ?? {};
                      return MealFoodScheduleRow(
                        mObj: mObj,
                        index: index,
                      );
                    }),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Café da tarde",
                        style: TextStyle(
                            color: TColor.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
                ListView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: snacksArr.length,
                    itemBuilder: (context, index) {
                      var mObj = snacksArr[index] as Map? ?? {};
                      return MealFoodScheduleRow(
                        mObj: mObj,
                        index: index,
                      );
                    }),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Jantar",
                        style: TextStyle(
                            color: TColor.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
                ListView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: dinnerArr.length,
                    itemBuilder: (context, index) {
                      var mObj = dinnerArr[index] as Map? ?? {};
                      return MealFoodScheduleRow(
                        mObj: mObj,
                        index: index,
                      );
                    }),
                SizedBox(
                  height: media.width * 0.05,
                ),
                SizedBox(
                  height: media.width * 0.05,
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
