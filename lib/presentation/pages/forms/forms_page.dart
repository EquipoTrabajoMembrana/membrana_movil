import 'package:flutter/material.dart';
import 'package:membrana/presentation/pages/agg_form/add_form_page.dart';

class Formularios extends StatelessWidget {
  final String mesNombre;
  final String anioNombre;
  const Formularios({
    Key? key,
    required this.mesNombre,
    required this.anioNombre,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              mesNombre,
            ),
            Text(
              anioNombre,
              style: theme.textTheme.bodySmall,
            ),
          ],
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: GridView.count(
              crossAxisCount: 2,
              children: List.generate(
                15,
                (index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AgregarFormulario(
                            mesNombre: mesNombre,
                            anioNombre: anioNombre,
                          ),
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
                              color: theme.colorScheme.primary,
                            ),
                            Text(
                              'Form',
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            )),
      ),
    );
  }
}


// Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(top: 5.0, bottom: 10.0),
//                   child: SizedBox(
//                     height: 170,
//                     width: MediaQuery.of(context).size.width,
//                     child: ListView.builder(
//                       scrollDirection: Axis.horizontal,
//                       itemBuilder: (BuildContext context, index) {
//                         return GestureDetector(
//                           onTap: () {
//                             Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                 builder: (context) => const AgregarFormulario(),
//                               ),
//                             );
//                           },
//                           child: Card(
//                             child: Padding(
//                               padding: const EdgeInsets.all(10.0),
//                               child: Column(
//                                 children: [
//                                   Image.asset(
//                                     'assets/images/logoNegro.png',
//                                     width: 100,
//                                     color: theme.colorScheme.primary,
//                                   ),
//                                   Text(
//                                     'Form',
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                         );
//                       },
//                       itemCount: 3,
//                     ),
//                   ),
//                 ),
//               ],
//             ),