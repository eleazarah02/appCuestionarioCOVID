import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:filtro_sanitario_cdp/models/questions.dart';
import 'package:filtro_sanitario_cdp/score/score_screen.dart';

// Usamos obtener paquete para nuestra gestión de estado

class QuestionController extends GetxController
    with GetSingleTickerProviderStateMixin {
  // Vamos a animar nuestra barra de progreso

  late AnimationController _animationController;
  late Animation _animation;

  late BuildContext context;
  // para que podamos acceder a nuestra animación fuera
  Animation get animation => _animation;

  late PageController _pageController;
  PageController get pageController => _pageController;

  final List<Question> _questions = sample_data
      .map(
        (question) => Question(
            id: question['id'],
            question: question['question'],
            options: question['options'],
            answer: question['answer'],
            pto: question['pto']),
      )
      .toList();
  List<Question> get questions => _questions;

  bool _isAnswered = false;
  bool get isAnswered => _isAnswered;

  int _correctAns = 0;
  int get correctAns => _correctAns;

  int _selectedAns = 0;
  int get selectedAns => _selectedAns;

  final RxInt _questionNumber = 1.obs;
  RxInt get questionNumber => _questionNumber;

  int _numOfCorrectAns = 0;
  int get numOfCorrectAns => _numOfCorrectAns;

  int _numOfPuntos = 0;
  int get numOfPuntos => _numOfPuntos;

  // se llama inmediatamente después de que se asigna memoria al widget
  @override
  void onInit() {
    // Nuestra duración de animación es de 60 segundos.
    // entonces nuestro plan es llenar la barra de progreso dentro de 60 segundos
    _animationController =
        AnimationController(duration: const Duration(seconds: 60), vsync: this);
    _animation = Tween<double>(begin: 0, end: 1).animate(_animationController)
      ..addListener(() {
        // actualizar como setState
        update();
      });

    // comienza nuestra animación
    // Una vez que se completan los 60, vaya a la siguiente pregunta
    _animationController.forward().whenComplete(nextQuestion);
    _pageController = PageController();
    super.onInit();
  }

  // llamado justo antes de que el controlador se elimine de la memoria
  @override
  void onClose() {
    super.onClose();
    _animationController.dispose();
    _pageController.dispose();
  }

  int sumTotal = 0;
  void checkAns(Question question, int selectedIndex) {
    // porque una vez que el usuario presiona cualquier opción, se ejecutará
    _isAnswered = true;
    _correctAns = question.answer;
    _selectedAns = selectedIndex;
    _numOfPuntos = question.pto;

    if (_correctAns == _selectedAns) {
      _numOfCorrectAns++;
      // sumamos el total de puntos
      sumTotal += _numOfPuntos;
    }

    // Detendrá el contador.
    _animationController.stop();
    update();

    // Una vez que el usuario seleccione una respuesta después de 1 segundos, pasará a la  siguiente pregunta
    Future.delayed(const Duration(seconds: 1), () {
      nextQuestion();
    });
  }

  void nextQuestion() {
    if (_questionNumber.value != _questions.length) {
      _isAnswered = false;
      _pageController.nextPage(
          duration: const Duration(milliseconds: 250), curve: Curves.ease);

      // restablecer el contador
      _animationController.reset();

      // Entonces empieza de nuevo
      // Una vez que finalice el temporizador, vaya a la siguiente pregunta
      _animationController.forward().whenComplete(nextQuestion);
    } else {
      // navega a la página de resultados
      Get.to(const ScoreScreen());

      //Get.to(() => const ScoreScreen());
    }
  }

  void updateTheQnNum(int index) {
    // Incrementa el numero de pregunta
    _questionNumber.value = index + 1;
  }
}
