import 'package:flutter/material.dart';
import 'package:membrana/presentation/widgets/custom_elevatedbutton.dart';
import 'package:membrana/presentation/widgets/custom_textbutton.dart';
import 'package:membrana/presentation/widgets/custom_textfield.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    // final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FA),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Image.asset(
                      'assets/images/logoNegro.png',
                      width: 200,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Text(
                      'Bienvenido',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Teachers'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Text(
                      'Inicia sesion con tu cuenta para continuar',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFADB5BD),
                          fontFamily: 'Teachers'),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.0),
                    child: CustomTextField(
                      hintText: 'ejemplo@ejemplo.com',
                      labelText: 'Correo electronico',
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.0),
                    child: CustomTextField(
                      hintText: '123456',
                      labelText: 'Contraseña',
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.done,
                      showPass: true,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text(
                        '¿Olvidaste tu contraseña?',
                        style: TextStyle(
                          fontFamily: 'Teachers',
                        ),
                      ),
                      CustomTextButton(
                        onPressed: () {},
                        text: 'Recuperala',
                      )
                    ],
                  ),
                  SizedBox(
                    width: screenWidth,
                    child: CustomElevatedButton(
                      onPressed: () {},
                      text: 'Iniciar sesion',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
