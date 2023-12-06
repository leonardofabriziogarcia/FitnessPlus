import 'package:flutter/material.dart';

import '../../common/cores.dart';

class PrivacyView extends StatefulWidget {
  const PrivacyView({super.key});

  @override
  State<PrivacyView> createState() => _PrivacyViewState();
}

class _PrivacyViewState extends State<PrivacyView> {
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
      ),
      backgroundColor: TColor.white,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                         const SizedBox(
                height: 20,
              ),
               Text(
                    """**Política de Privacidade e Segurança**""",
                    style: TextStyle(
                        color: TColor.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w900)),
                        Text(
                          """

Ultima atualizacao: 29/11/2023

O Fitness+ valoriza a privacidade e a seguranca dos seus usuarios. Esta Politica de Privacidade e Seguranca descreve como coletamos, usamos, compartilhamos e protegemos as informacoes pessoais dos usuarios que utilizam nosso aplicativo de treinos e alimentacao. Ao utilizar o Fitness+, voce concorda com as praticas descritas nesta politica.

**1. Informacoes Coletadas:**

- **Informacoes Pessoais:**
  - Nome
  - Endereco de e-mail
  - Idade
  - Genero

- **Informacoes de Saude:**
  - Peso
  - Altura
  - Queima de calorias
  - Qualquer outra informacao relacionada a saude fornecida voluntariamente pelo usuario

- **Informacoes de Uso:**
  - Dados de acesso e atividade no aplicativo
  - Informacoes sobre o dispositivo usado para acessar o aplicativo

**2. Uso das Informacoes:**

- **Melhoria do Servico:**
  - Personalizacao de treinos e planos alimentares
  - Analise de desempenho do aplicativo
  - Aprimoramento continuo da experiencia do usuario

- **Comunicacao:**
  - Envio de notificacoes sobre treinos, atualizacoes e novos recursos

**3. Compartilhamento de Informacoes:**

- **Parceiros de Servico:**
  - Compartilhamento de dados com prestadores de servicos terceirizados que ajudam na operacao do aplicativo

- **Autoridades Competentes:**
  - Cumprimento de obrigacoes legais em resposta a solicitacoes legais

- **Consentimento do Usuario:**
  - Compartilhamento de informacoes com consentimento explicito do usuario

**4. Seguranca:**

- **Protecao de Dados:**
  - Implementacao de medidas tecnicas e organizacionais para garantir a seguranca das informacoes

- **Criptografia:**
  - Uso de protocolos de criptografia para proteger dados sensiveis

- **Acesso Restrito:**
  - Restricao de acesso as informacoes apenas a funcionarios autorizados e terceiros confiaveis

**6. Alteracoes na Politica de Privacidade:**

Reservamo-nos o direito de atualizar esta politica periodicamente. Recomendamos que os usuarios revejam regularmente esta politica para estar cientes de quaisquer alteracoes.

Ao utilizar o Fitness+, voce concorda com os termos desta Politica de Privacidade e Seguranca. Em caso de duvidas ou preocupacoes, entre em contato conosco em fitnessplus@gmail.com.

Obrigado por escolher o Fintess+! Estamos comprometidos em fornecer uma experiencia segura e eficaz para alcancar seus objetivos de treino e alimentacao.""",
                          style: TextStyle(
                        color: TColor.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w700)
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
