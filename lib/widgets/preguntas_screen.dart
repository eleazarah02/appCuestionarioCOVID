//import 'package:filtro_sanitario_cdp/controllers/question_controller.dart';
import 'package:filtro_sanitario_cdp/widgets/components/body.dart';
import 'package:flutter/material.dart';
//import 'package:get/get.dart';

class PreguntasScreen extends StatelessWidget {
  const PreguntasScreen({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    //QuestionController _controller = Get.put(QuestionController());
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent, elevation: 0,
        // actions: [
        // TextButton(
        //   onPressed: _controller.nextQuestion,
        //   child: const Text('Siguiente')),
        // ]
      ),
      body: const Body(),
    );
  }
}
