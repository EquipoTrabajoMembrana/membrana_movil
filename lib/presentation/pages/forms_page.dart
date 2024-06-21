import 'package:flutter/material.dart';

import 'package:membrana/presentation/pages/add_form_page.dart';

class FormsPage extends StatelessWidget {
  final String mesNombre;
  const FormsPage({
    Key? key,
    required this.mesNombre,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(mesNombre),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 5.0, bottom: 10.0),
                  child: SizedBox(
                    height: 170,
                    width: MediaQuery.of(context).size.width,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const AddFormPage(),
                              ),
                            );
                          },
                          child: Card(
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                children: [
                                  Image.asset(
                                    'assets/images/logoNegro.png',
                                    width: 100,
                                  ),
                                  Text('Form'),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                      itemCount: 3,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5.0, bottom: 10.0),
                  child: SizedBox(
                    height: 170,
                    width: MediaQuery.of(context).size.width,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, index) {
                        return Card(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/images/logoNegro.png',
                                  width: 100,
                                ),
                                Text('Form'),
                              ],
                            ),
                          ),
                        );
                      },
                      itemCount: 3,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
