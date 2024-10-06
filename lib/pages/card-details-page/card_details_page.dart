import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CardDetailsPage extends StatefulWidget {
  const CardDetailsPage({super.key});

  @override
  State<CardDetailsPage> createState() => _CardDetailsPageState();
}

class _CardDetailsPageState extends State<CardDetailsPage> {
  final formKey = GlobalKey<FormState>();

  bool cardDetails(String cardNumber) {
    final numberRegExp = RegExp(r"^\+?0[0-9]{16}$");
    return numberRegExp.hasMatch(cardNumber);
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Validador de tarjetas de credito'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Center(
                    child: Text(
                      'Ingresa los datos de tu tarjeta para ver si es valida',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            keyboardType: TextInputType.name,
                            decoration: const InputDecoration(
                              hintText: 'Nombre',
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'El nombre es obligatorio';
                              }
                              return null;
                            },
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: TextFormField(
                            keyboardType: TextInputType.name,
                            decoration: const InputDecoration(
                              hintText: 'Apellido',
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'El apellido es obligatorio';
                              }
                              return null;
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5, bottom: 5),
                    child: TextFormField(
                      keyboardType: TextInputType.streetAddress,
                      decoration: const InputDecoration(
                        hintText: 'Direccion',
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'La direccion es obligatoria';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5, bottom: 10),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(16),
                      ],
                      decoration: const InputDecoration(
                        hintText: 'Numero de tarjeta',
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'El número de tarjeta es obligatorio';
                        }
                        if (cardDetails(value)) {
                          return 'El número de tarjeta no es válido';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(2),
                            ],
                            decoration: const InputDecoration(
                              hintText: 'Mes',
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'El mes es obligatorio';
                              }
                              final mes = int.tryParse(value);

                              if (mes == null || mes < 1 || mes > 12) {
                                return 'Mes no valido';
                              }
                              return null;
                            },
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(2),
                            ],
                            decoration: const InputDecoration(
                              hintText: 'Año',
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'El año es obligatorio';
                              }
                              final anio = int.tryParse(value);

                              if (anio == null || anio < 25 || anio > 30) {
                                return 'Año no válido';
                              }
                              return null;
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: width * .25,
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(4),
                      ],
                      decoration: const InputDecoration(
                        hintText: 'CVV',
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'El CVV es obligatorio';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: SizedBox(
                      width: width,
                      child: ElevatedButton(
                        onPressed: () {
                          if (formKey.currentState?.validate() ?? false) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Tarjeta valida, gracias 🤓☝🏽'),
                              ),
                            );
                          }
                        },
                        child: const Text('Guardar'),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
