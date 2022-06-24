import 'package:filtro_sanitario_cdp/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:filtro_sanitario_cdp/controllers/question_controller.dart';
import 'package:filtro_sanitario_cdp/models/questions.dart';
import 'option.dart';

class QuestionCard extends StatelessWidget {
  const QuestionCard({Key? key, required this.question}) : super(key: key);

  final Question question;

  @override
  Widget build(BuildContext context) {
    QuestionController _controller = Get.put(QuestionController());
    return Container(
      alignment: Alignment.bottomCenter,
      margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      padding: const EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: [
          Text(
            question.question,
            style: Theme.of(context)
                .textTheme
                .headline6
                ?.copyWith(color: kBlackColor),
          ),
          const SizedBox(height: kDefaultPadding / 2),
          ...List.generate(
            question.options.length,
            (index) => Option(
              index: index,
              text: question.options[index],
              press: () => _controller.checkAns(question, index),
            ),
          ),
        ],
      ),
    );
  }
}
