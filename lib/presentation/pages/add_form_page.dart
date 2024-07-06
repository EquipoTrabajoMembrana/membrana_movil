import 'package:flutter/material.dart';
import 'package:membrana/presentation/widgets/custom_elevatedbutton.dart';
import 'package:membrana/presentation/widgets/custom_textfield.dart';

class AgregarFormulario extends StatelessWidget {
  const AgregarFormulario({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Form 1',
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
          child: Center(
            child: Column(
              children: [
                ExpansionTile(
                  title: Text(
                    'Area 1',
                  ),
                  shape: Border(),
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: CustomTextField(
                        labelText: 'Concepto 1',
                        hintText: 'Texto',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: CustomTextField(
                        labelText: 'Concepto 2',
                        hintText: 'Texto',
                      ),
                    ),
                  ],
                ),
                ExpansionTile(
                  title: Text('Area 2'),
                  shape: Border(),
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: CustomTextField(
                        labelText: 'Concepto 1',
                        hintText: 'Texto',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: CustomTextField(
                        labelText: 'Concepto 2',
                        hintText: 'Texto',
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: CustomElevatedButton(
                        onPressed: () {},
                        text: 'Enviar',
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: CustomElevatedButton(
                        onPressed: () {},
                        text: 'Cancelar',
                        notBackgroundColor: true,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
