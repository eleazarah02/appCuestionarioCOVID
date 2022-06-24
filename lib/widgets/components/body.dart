import 'package:filtro_sanitario_cdp/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:filtro_sanitario_cdp/controllers/question_controller.dart';
import 'package:flutter_svg/svg.dart';
import 'progress_bar.dart';
import 'question_card.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // So that we have acccess our controller
    QuestionController _questionController = Get.put(QuestionController());
    return Stack(
      fit: StackFit.expand,
      children: [
        SvgPicture.asset('images/icons/bg.svg', fit: BoxFit.fill),
        SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: ProgressBar(),
              ),
              const SizedBox(height: kDefaultPadding),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Obx(
                  () => Text.rich(
                    TextSpan(
                      text:
                          'Pregunta ${_questionController.questionNumber.value}',
                      style: Theme.of(context)
                          .textTheme
                          .headline5
                          ?.copyWith(color: kSecondaryColor),
                      children: [
                        TextSpan(
                          text: ' de ${_questionController.questions.length}',
                          style: Theme.of(context)
                              .textTheme
                              .headline5
                              ?.copyWith(color: kSecondaryColor),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const Divider(thickness: 1.5),
              const SizedBox(height: kDefaultPadding),
              Expanded(
                child: PageView.builder(
                  // Block swipe to next qn
                  physics: const NeverScrollableScrollPhysics(),
                  controller: _questionController.pageController,
                  onPageChanged: _questionController.updateTheQnNum,
                  itemCount: _questionController.questions.length,
                  itemBuilder: (context, index) => QuestionCard(
                      question: _questionController.questions[index]),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
