<<<<<<< HEAD

import 'package:flutter/material.dart';
=======
// <<<<<<< HEAD:lib/view/home/notification_view.dart
// import 'package:flutter/material.dart';

// import '../../common/colo_extension.dart';
// import '../../common_widget/notification_row.dart';

// class NotificationView extends StatefulWidget {
//   const NotificationView({super.key});

//   @override
//   State<NotificationView> createState() => _NotificationViewState();
// }

// class _NotificationViewState extends State<NotificationView> {
//   List notificationArr = [
//     {"image": "assets/img/Workout1.png", "title": "Olá, é hora do almoço", "tempo": "1 minuto atrás"},
//     {"image": "assets/img/Workout2.png", "title": "Não perca seu treino de inferiores", "tempo": "3 horas atrás"},
//     {"image": "assets/img/Workout3.png", "title": "Olá, vamos adicionar algumas refeições na sua rotina", "tempo": "3 horas atrás"},
//     {"image": "assets/img/Workout1.png", "title": "Parabéns, você terminou A..", "data": "29 de maio"},
//     {"image": "assets/img/Workout2.png", "title": "Olá, é hora do almoço", "data": "8 de abril"},
//     {"image": "assets/img/Workout3.png", "title": "Ops, você perdeu seu treino", "data": "8 de abril"},
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: TColor.white,
//         centerTitle: true,
//         elevation: 0,
//         leading: InkWell(
//           onTap: () {
//             Navigator.pop(context);
//           },
//           child: Container(
//             margin: const EdgeInsets.all(8),
//             height: 40,
//             width: 40,
//             alignment: Alignment.center,
//             decoration: BoxDecoration(
//                 color: TColor.lightGray,
//                 borderRadius: BorderRadius.circular(10)),
//             child: Image.asset(
//               "assets/img/black_btn.png",
//               width: 15,
//               height: 15,
//               fit: BoxFit.contain,
//             ),
//           ),
//         ),
//         title: Text(
//           "Notificação",
//           style: TextStyle(
//               color: TColor.black, fontSize: 16, fontWeight: FontWeight.w700),
//         ),
//         actions: [
//           InkWell(
//             onTap: () {},
//             child: Container(
//               margin: const EdgeInsets.all(8),
//               height: 40,
//               width: 40,
//               alignment: Alignment.center,
//               decoration: BoxDecoration(
//                   color: TColor.lightGray,
//                   borderRadius: BorderRadius.circular(10)),
//               child: Image.asset(
//                 "assets/img/more_btn.png",
//                 width: 12,
//                 height: 12,
//                 fit: BoxFit.contain,
//               ),
//             ),
//           )
//         ],
//       ),
//       backgroundColor: TColor.white,
//       body: ListView.separated(
//         padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
//         itemBuilder: ((context, index) {
//           var nObj = notificationArr[index] as Map? ?? {};
//           return NotificationRow(nObj: nObj);
//       }), separatorBuilder: (context, index){
//         return Divider(color: TColor.gray.withOpacity(0.5), height: 1, );
//       }, itemCount: notificationArr.length),
//     );
//   }
// }
// =======
// import 'package:flutter/material.dart';
>>>>>>> 45b5993e7327c9177728274a4b7e2e5b1f198a4d

// import '../../common/cores.dart';
// import '../../common_widget/coluna_notificacoes.dart';

// class NotificationView extends StatefulWidget {
//   const NotificationView({super.key});

//   @override
//   State<NotificationView> createState() => _NotificationViewState();
// }

// class _NotificationViewState extends State<NotificationView> {
//   List notificationArr = [
//     {"image": "assets/img/Workout1.png", "title": "Olá, é hora do almoço", "tempo": "1 minuto atrás"},
//     {"image": "assets/img/Workout2.png", "title": "Não perca seu treino de inferiores", "tempo": "3 horas atrás"},
//     {"image": "assets/img/Workout3.png", "title": "Olá, vamos adicionar algumas refeições na sua rotina", "tempo": "3 horas atrás"},
//     {"image": "assets/img/Workout1.png", "title": "Parabéns, você terminou A..", "data": "29 de maio"},
//     {"image": "assets/img/Workout2.png", "title": "Olá, é hora do almoço", "data": "8 de abril"},
//     {"image": "assets/img/Workout3.png", "title": "Ops, você perdeu seu treino", "data": "8 de abril"},
//   ];

<<<<<<< HEAD
  @override
  Widget build(BuildContext context) {
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
          "Notification",
          style: TextStyle(
              color: TColor.black, fontSize: 16, fontWeight: FontWeight.w700),
        ),
        actions: [
          InkWell(
            onTap: () {},
            child: Container(
              margin: const EdgeInsets.all(8),
              height: 40,
              width: 40,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: TColor.lightGray,
                  borderRadius: BorderRadius.circular(10)),
              child: Image.asset(
                "assets/img/more_btn.png",
                width: 12,
                height: 12,
                fit: BoxFit.contain,
              ),
            ),
          )
        ],
      ),
      backgroundColor: TColor.white,
      body: ListView.separated(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
        itemBuilder: ((context, index) {
          var nObj = notificationArr[index] as Map? ?? {};
          return NotificationRow(nObj: nObj);
      }), separatorBuilder: (context, index){
        return Divider(color: TColor.gray.withOpacity(0.5), height: 1, );
      }, itemCount: notificationArr.length),
    );
  }
}
=======
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: TColor.white,
//         centerTitle: true,
//         elevation: 0,
//         leading: InkWell(
//           onTap: () {
//             Navigator.pop(context);
//           },
//           child: Container(
//             margin: const EdgeInsets.all(8),
//             height: 40,
//             width: 40,
//             alignment: Alignment.center,
//             decoration: BoxDecoration(
//                 color: TColor.lightGray,
//                 borderRadius: BorderRadius.circular(10)),
//             child: Image.asset(
//               "assets/img/black_btn.png",
//               width: 15,
//               height: 15,
//               fit: BoxFit.contain,
//             ),
//           ),
//         ),
//         title: Text(
//           "Notification",
//           style: TextStyle(
//               color: TColor.black, fontSize: 16, fontWeight: FontWeight.w700),
//         ),
//         actions: [
//           InkWell(
//             onTap: () {},
//             child: Container(
//               margin: const EdgeInsets.all(8),
//               height: 40,
//               width: 40,
//               alignment: Alignment.center,
//               decoration: BoxDecoration(
//                   color: TColor.lightGray,
//                   borderRadius: BorderRadius.circular(10)),
//               child: Image.asset(
//                 "assets/img/more_btn.png",
//                 width: 12,
//                 height: 12,
//                 fit: BoxFit.contain,
//               ),
//             ),
//           )
//         ],
//       ),
//       backgroundColor: TColor.white,
//       body: ListView.separated(
//         padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
//         itemBuilder: ((context, index) {
//           var nObj = notificationArr[index] as Map? ?? {};
//           return NotificationRow(nObj: nObj);
//       }), separatorBuilder: (context, index){
//         return Divider(color: TColor.gray.withOpacity(0.5), height: 1, );
//       }, itemCount: notificationArr.length),
//     );
//   }
// }
// >>>>>>> 5e32ffc7da09c7b6b0c4776bd53627a6f19659aa:lib/view/home/notificacao.dart
>>>>>>> 45b5993e7327c9177728274a4b7e2e5b1f198a4d
