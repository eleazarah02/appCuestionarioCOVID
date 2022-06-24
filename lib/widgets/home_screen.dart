
import 'package:flutter/material.dart';
import 'package:filtro_sanitario_cdp/widgets/datos_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cuestionario para el filtro sanitario'),
        elevation: 5.0,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: [
          Card(
            child: Column(
              children: [
                const ListTile(
                  leading: Icon(Icons.home),
                  title: Text('Estimado Colaborador:'),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Con la finalidad de continuar con la implementación de las medidas que permitan cuidarnos, así como de responder oportunamente al contexto que presenta la Pandemia por COVID-19, estamos monitoreando el estado de salud del personal, por lo que te solicitamos responder el siguiente cuestionario.',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Cabe mencionar que la información que nos proporciones únicamente la emplearemos para adecuar las medidas sanitarias conforme evolucione la presente situación.',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton(

                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const CuestionarioScreen()),
                          );
                        },
                        child: const Text('Continuar'),
                      )
                    ],

                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}