import 'package:filtro_sanitario_cdp/widgets/custom_unput_field.dart';
import 'package:filtro_sanitario_cdp/widgets/preguntas_screen.dart';
import 'package:flutter/material.dart';

class CuestionarioScreen extends StatelessWidget {
  const CuestionarioScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'nom_colaborador': 'Eleazar',
      'ape_colaborador': 'Albino',
      'area_colaborador': 'Contraloria Interna',
      'correo': 'eleazar.albino@cajadepac.org.mx'
    };

    return Scaffold(
        appBar: AppBar(
          title: const Text('Datos del colaborador'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Form(
              key: myFormKey,
              child: Column(children: [
                CustomInputField(
                    labelText: 'Nombre del colaborador',
                    hintText: '',
                    formProperty: 'nom_colaborador',
                    formValues: formValues),
                const SizedBox(height: 20),
                CustomInputField(
                    labelText: 'Apellidos del colaborador',
                    hintText: '',
                    formProperty: 'ape_colaborador',
                    formValues: formValues),
                const SizedBox(height: 20),
                CustomInputField(
                    labelText: 'Área/Sucursal del colaborador',
                    hintText: '',
                    formProperty: 'area_colaborador',
                    formValues: formValues),
                const SizedBox(height: 20),
                CustomInputField(
                    labelText: 'Correo del colaborador',
                    hintText: '',
                    keyboardType: TextInputType.emailAddress,
                    formProperty: 'correo',
                    formValues: formValues),
                const SizedBox(height: 20),
                ElevatedButton(
                  child: const SizedBox(
                      width: double.infinity,
                      child: Center(child: Text('Guardar y continuar'))),
                  onPressed: () {
                    //FocusScope.of(context).requestFocus(FocusNode());

                    if (!myFormKey.currentState!.validate()) {
                      //print('Formulario no válido');
                      return;
                    }

                    //* imprimir valores del formulario
                    //print(formValues);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PreguntasScreen()),
                    );
                  },
                )
              ]),
            ),
          ),
        ));
  }
}