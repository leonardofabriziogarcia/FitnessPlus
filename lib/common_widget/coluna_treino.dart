import 'package:fitness/common/cores.dart';
import 'package:flutter/material.dart';
import 'package:simple_animation_progress_bar/simple_animation_progress_bar.dart';

class WorkoutRow extends StatelessWidget {
  final Map wObj;
  const WorkoutRow({super.key, required this.wObj});

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 2),
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
        decoration: BoxDecoration(
            color: TColor.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 2)]),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.asset(
                wObj["image"].toString(),
                width: 60,
                height: 60,
                fit: BoxFit.cover,
              ),
            ),

           const SizedBox(width: 15,),
            Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                  Text(
                  wObj["name"].toString(),
                  style: TextStyle(
                      color: TColor.black,
                      fontSize: 13),
                ),

                Text(
                  "Queima ${ wObj["kcal"].toString() } calorias | ${wObj["time"].toString()} minutos",
                  style: TextStyle(
                      color: TColor.gray,
                      fontSize: 11,),
                ),

               const SizedBox(height: 4),
              ],
            )),
            IconButton(
                onPressed: () {},
                icon: Image.asset(
                  "assets/img/next_icon.png",
                  width: 30,
                  height: 30,
                  fit: BoxFit.contain,
                ))
          ],
        ));
  }
}
