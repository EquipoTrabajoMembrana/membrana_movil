import 'package:flutter/material.dart';
import 'package:membrana/presentation/pages/forms_page.dart';
import 'package:membrana/presentation/pages/login_page.dart';
import 'package:membrana/presentation/pages/profile_page.dart';
import '/mockMeses.dart';

class Reportes extends StatelessWidget {
  const Reportes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Reportes',
          style: TextStyle(fontFamily: 'Teachers'),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Perfil(),
                ),
              );
            },
            icon: Icon(Icons.person),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Card(
                    child: ExpansionTile(
                      shape: Border(),
                      title: Text(
                        'Periodo',
                        style: TextStyle(fontFamily: 'Teachers'),
                      ),
                      children: [
                        Divider(),
                        ExpansionTile(
                          shape: Border(),
                          enabled: false,
                          title: Text(
                            '2023',
                            style: TextStyle(fontFamily: 'Teachers'),
                          ),
                          children: List.generate(
                            meses.length,
                            (int index) {
                              return ListTile(
                                title: Text(
                                  meses[index],
                                  style: TextStyle(fontFamily: 'Teachers'),
                                ),
                              );
                            },
                          ),
                        ),
                        Divider(),
                        ExpansionTile(
                          shape: Border(),
                          title: Text(
                            '2024',
                            style: TextStyle(fontFamily: 'Teachers'),
                          ),
                          children: List.generate(
                            meses.length,
                            (int index) {
                              return ListTile(
                                title: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Formularios(
                                          mesNombre: meses[index],
                                        ),
                                      ),
                                    );
                                  },
                                  child: Text(
                                    meses[index],
                                    style: TextStyle(fontFamily: 'Teachers'),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Login(),
                          ),
                        );
                      },
                      child: const Text('Iniciar sesion', style: TextStyle(fontFamily: 'Teachers'),),
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
