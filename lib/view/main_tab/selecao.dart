import 'package:fitness/common_widget/butao_redondo.dart';
import 'package:fitness/view/meal_planner/plano_alimentacao.dart';
import 'package:fitness/view/workout_tracker/acompanhamento_treinos.dart';
import 'package:flutter/material.dart';


class SelectView extends StatelessWidget {
  const SelectView({super.key});

  @override
  Widget build(BuildContext context) {
    // var media = MediaQuery.of(context).size;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RoundButton(
                title: "Acompanhamento dos treinos",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const WorkoutTrackerView(),
                    ),
                  );
                }),

                const SizedBox(height: 15,),

                  RoundButton(
                title: "Rotina de alimentação",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MealPlannerView(),
                    ),
                  );
                }),

                const SizedBox(height: 15,),

          ],
        ),
      ),
    );
  }
}
