import 'package:flutter/material.dart';
import 'package:filtro_sanitario_cdp/widgets/widgets.dart';
import '../score/score_screen.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static Map<String, Widget Function(BuildContext)> routes = {
    'home': (BuildContext context) => const HomeScreen(),
    'datos': (BuildContext context) => const CuestionarioScreen(),
    'preguntas': (BuildContext context) => const PreguntasScreen(),
    'resultado': (BuildContext context) => const ScoreScreen(),
  };
}
