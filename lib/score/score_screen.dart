import 'package:filtro_sanitario_cdp/widgets/datos_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:filtro_sanitario_cdp/constants.dart';
import 'package:filtro_sanitario_cdp/controllers/question_controller.dart';
import 'package:flutter_svg/svg.dart';

class ScoreScreen extends StatelessWidget {
  const ScoreScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    QuestionController _qnController = Get.put(QuestionController());
    CuestionarioScreen _qnCuestionario= Get.put(CuestionarioScreen());

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          SvgPicture.asset('images/icons/bg.svg', fit: BoxFit.fill),
          Column(
            children: [
              const Spacer(flex: 3),
              Text(
                "Total de puntos",
                style: Theme.of(context)
                    .textTheme
                    .headline3
                    ?.copyWith(color: kSecondaryColor),
              ),
              const Spacer(),
              Text(
                "${_qnController.sumTotal}",
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    ?.copyWith(color: kSecondaryColor),
              ),
              const Spacer(),
              Text(
                "MANTEN LA CALMA",
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    ?.copyWith(color: kSecondaryColor),
              ),
              const Spacer(flex: 3),
            ],
          )
        ],
      ),
    );
  }
}
