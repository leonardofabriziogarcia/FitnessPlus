import 'package:fitness/common/cores.dart';
import 'package:fitness/common_widget/butao_redondo.dart';
import 'package:fitness/common_widget/campo_texto.dart';
import 'package:fitness/common_widget/texto_mensagem.dart';
import 'package:fitness/view/profile/perfil.dart';
import 'package:flutter/material.dart';

class ContatoView extends StatefulWidget {
  const ContatoView({super.key});

  @override
  State<ContatoView> createState() => _ContatoViewState();
}

class _ContatoViewState extends State<ContatoView> {
  bool isCheck = false;
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: TColor.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: media.width * 0.15,
                ),
                Text(
                  "Fale conosco",
                  style: TextStyle(
                      color: TColor.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: media.width * 0.1,
                ),
                const RoundTextField(
                  hitText: "Primeiro Nome",
                  icon: "assets/img/user_text.png",
                ),
                SizedBox(
                  height: media.width * 0.07,
                ),
                const RoundTextField(
                  hitText: "Email",
                  icon: "assets/img/user_text.png",
                ),
                SizedBox(
                  height: media.width * 0.07,
                ),
                const RoundTextField(
                  hitText: "Telefone",
                  icon: "assets/img/phone_icon.png",
                ),
                SizedBox(
                  height: media.width * 0.07,
                ),
                const MessageTextField(
                  hitText: "Mensagem",
                  icon: "assets/img/message_icon.png",
                ),
                SizedBox(
                  height: media.width * 0.55,
                ),
                RoundButton(
                    title: "Enviar mensagem",
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const ProfileView()));
                    }),
                SizedBox(
                  height: media.width * 0.04,
                ),
                SizedBox(
                  height: media.width * 0.04,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
