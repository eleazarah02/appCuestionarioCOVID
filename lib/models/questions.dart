class Question {
  final int id, answer, pto;
  final String question;
  final List<String> options;

  Question(
      {required this.id,
      required this.question,
      required this.answer,
      required this.options,
      required this.pto});
}

// ignore: non_constant_identifier_names
List sample_data = [
  {
    'id': 1,
    'question':
        '¿Has estado con una persona que tenga diagnóstico confirmado de COVID-19? (en los últimos 14 dias)',
    'options': ['No', 'Si'],
    'answer': 1,
    'pto': 11,
  },
  {
    'id': 2,
    'question':
        '¿Has tenido contacto con algún sospechoso de padecer COVID-19? (en los ultimos 14 dias)',
    'options': ['No', 'Si'],
    'answer': 1,
    'pto': 3,
  },
  {
    'id': 3,
    'question': '¿Tienes fiebre? (Temperatura igual o mayor a 38°C)',
    'options': ['No', 'Si'],
    'answer': 1,
    'pto': 5,
  },
  {
    'id': 4,
    'question': '¿Tiene dolor de cabeza, atípico, inusual, fuerte?',
    'options': ['No', 'Si'],
    'answer': 1,
    'pto': 5,
  },
  {
    'id': 5,
    'question': '¿Tiene tos?',
    'options': ['No', 'Si'],
    'answer': 1,
    'pto': 5
  },
  {
    'id': 6,
    'question': '¿Tienes dolor de garganta?',
    'options': ['No', 'Si'],
    'answer': 1,
    "pto": 1
  },
  {
    'id': 7,
    'question': '¿Tienes dificultad para respirar?',
    'options': ['No', 'Si'],
    'answer': 1,
    'pto': 11
  },
  {
    'id': 8,
    'question': '¿Te duele el cuerpo o las articulaciones?',
    'options': ['No', 'Si'],
    'answer': 1,
    'pto': 1
  },
  {
    'id': 9,
    'question':
        '¿Tienes alguna de las siguientes condiciones: (Diabetes,Hipertensión, Problemas cardíacos, Enfermedad pulmonar rónica (EPOC), Sida (VIH), Cáncer?',
    'options': ['No', 'Si'],
    'answer': 1,
    'pto': 1
  },
  {
    'id': 10,
    'question': '¿Tienes congestión nasal?',
    'options': ['No', 'Si'],
    'answer': 1,
    'pto': 1
  },
  {
    'id': 11,
    'question': '¿Sientes picazón en los ojos?',
    'options': ['No', 'Si'],
    'answer': 1,
    'pto': 1
  },
  {
    'id': 12,
    'question':
        '¿Has experimentado la pérdida repentina del olfato o el gusto?',
    'options': ['No', 'Si'],
    'answer': 1,
    'pto': 5
  },
  {
    'id': 13,
    'question': '¿Tienes debilidad y malestar general?',
    'options': ['No', 'Si'],
    'answer': 1,
    "pto": 3
  },
  {
    'id': 14,
    'question': '¿Tienes escalofríos?',
    'options': ['No', 'Si'],
    'answer': 1,
    'pto': 1
  },
  {
    'id': 15,
    'question': '¿Tienes dolor abdominal?',
    'options': ['No', 'Si'],
    'answer': 1,
    'pto': 2
  },
  {
    'id': 16,
    'question': '¿Tienes diarrea o vómito?',
    'options': ['No', 'Si'],
    'answer': 1,
    'pto': 3
  },
  {
    'id': 17,
    'question': '¿Hace cuanto iniciaron los sintomas?',
    'options': ['Mas de 24 horas', 'Menos de 24 horas'],
    'answer': 1,
    'pto': 0
  },
];
