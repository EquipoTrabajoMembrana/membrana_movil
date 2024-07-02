import 'package:flutter/material.dart';
import 'package:membrana/presentation/widgets/custom_textfield.dart';
import 'package:sizer/sizer.dart';

class Perfil extends StatelessWidget {
  const Perfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Center(
          child: Text(
            'Perfil',
            style: TextStyle(fontFamily: 'Teachers'),
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SizedBox(
            height: 50.0.h,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomTextField(
                  isEnabled: false,
                  onlyRead: true,
                  labelText: 'Nombre',
                  initValue: 'Jose Fabian Cruz Puch',
                ),
                CustomTextField(
                  isEnabled: false,
                  onlyRead: true,
                  labelText: 'Correo lectronico',
                  initValue: 'Jogo@gmail.com',
                ),
                CustomTextField(
                  isEnabled: false,
                  onlyRead: true,
                  labelText: 'Telefono',
                  initValue: '9992345678',
                ),
                CustomTextField(
                  isEnabled: false,
                  onlyRead: true,
                  labelText: 'Distrito',
                  initValue: 'SG-22',
                ),
                CustomTextField(
                  isEnabled: false,
                  onlyRead: true,
                  labelText: 'Comunidad',
                  initValue: 'SG-22',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
