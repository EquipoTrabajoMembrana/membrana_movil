import 'package:flutter/material.dart';
import 'package:membrana/presentation/pages/forms_page.dart';
import 'package:membrana/presentation/pages/login_page.dart';
import '/mockMeses.dart';

class ReportesPage extends StatelessWidget {
  const ReportesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reportes'),
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
                      title: Text('Periodo'),
                      children: [
                        Divider(),
                        ExpansionTile(
                          shape: Border(),
                          enabled: false,
                          title: Text('2023'),
                          children: List.generate(
                            meses.length,
                            (int index) {
                              return ListTile(
                                title: Text(meses[index]),
                              );
                            },
                          ),
                        ),
                        Divider(),
                        ExpansionTile(
                          shape: Border(),
                          title: Text('2024'),
                          children: List.generate(
                            meses.length,
                            (int index) {
                              return ListTile(
                                title: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => FormsPage(
                                          mesNombre: meses[index],
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
                            builder: (context) => const LoginPage(),
                          ),
                        );
                      },
                      child: const Text('Iniciar sesion'),
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
