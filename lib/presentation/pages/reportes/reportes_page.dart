import 'package:flutter/material.dart';
import 'package:membrana/presentation/pages/forms/forms_page.dart';
import 'package:membrana/presentation/pages/login/login_page.dart';
import 'package:membrana/presentation/pages/perfil/profile_page.dart';
import 'package:membrana/presentation/pages/ajustes/settings_page.dart';
import '/mockMeses.dart';

class Reportes extends StatelessWidget {
  const Reportes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Reportes',
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
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Ajustes(),
                ),
              );
            },
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
                      ),
                      children: [
                        Divider(),
                        ExpansionTile(
                          shape: Border(),
                          enabled: false,
                          title: Text(
                            '2023',
                          ),
                          children: List.generate(
                            meses.length,
                            (int index) {
                              return ListTile(
                                title: Text(
                                  meses[index],
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
                                          anioNombre: '2024',
                                        ),
                                      ),
                                    );
                                  },
                                  child: Text(
                                    meses[index],
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
                      child: const Text(
                        'Iniciar sesion',
                      ),
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
