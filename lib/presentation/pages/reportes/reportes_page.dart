import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:membrana/presentation/pages/forms/forms_page.dart';
import 'package:membrana/presentation/pages/login/login_page.dart';
import 'package:membrana/presentation/pages/ajustes/settings_page.dart';
import 'package:membrana/presentation/pages/reportes/cubit/meses_cubit.dart';
import 'package:membrana/presentation/pages/reportes/cubit/periodos_cubit.dart';

class Reportes extends StatelessWidget {
  const Reportes({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PeriodosCubit()..getPeriodos(),
        ),
        BlocProvider(
          create: (context) => MesesCubit()..getMeses(),
        ),
      ],
      child: Builder(
        builder: (context) {
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
                        builder: (context) => const Login(),
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
                        BlocBuilder<PeriodosCubit, PeriodosState>(
                          builder: (context, state) {
                            if (state is PeriodosLoading) {
                              return Center(
                                child: CircularProgressIndicator(),
                              );
                            }
                            if (state is PeriodosSuccess) {
                              final periodos = state.periodos!;
                              return Card(
                                child: ExpansionTile(
                                  shape: Border(),
                                  title: Text(
                                    'Periodo',
                                  ),
                                  children: periodos.reversed.map((periodo) {
                                    return Column(
                                      children: [
                                        Divider(),
                                        ExpansionTile(
                                          enabled: periodo.visible!,
                                          shape: Border(),
                                          title: Text(
                                            periodo.nombre!,
                                          ),
                                          children: [
                                            BlocBuilder<MesesCubit, MesesState>(
                                              builder: (context, state) {
                                                if (state is MesesLoading) {
                                                  return Center(
                                                    child:
                                                        CircularProgressIndicator(),
                                                  );
                                                }
                                                if (state is MesesSuccess) {
                                                  final meses = state.meses!;
                                                  meses.sort(
                                                    (a, b) =>
                                                        int.parse(a.idMes!)
                                                            .compareTo(
                                                      int.parse(b.idMes!),
                                                    ),
                                                  );
                                                  return Column(
                                                    children: meses.map(
                                                      (mes) {
                                                        return ListTile(
                                                          title:
                                                              GestureDetector(
                                                            onTap: () {
                                                              Navigator.push(
                                                                context,
                                                                MaterialPageRoute(
                                                                  builder:
                                                                      (context) =>
                                                                          Formularios(
                                                                    mesNombre: mes
                                                                        .nombre!,
                                                                    anioNombre:
                                                                        periodo
                                                                            .nombre!,
                                                                  ),
                                                                ),
                                                              );
                                                            },
                                                            child: Text(
                                                              mes.nombre!,
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                    ).toList(),
                                                  );
                                                }
                                                if (state is MesesError) {
                                                  return Center(
                                                    child: Text(
                                                      'Error al cargar meses',
                                                      style: theme.textTheme
                                                          .titleMedium,
                                                    ),
                                                  );
                                                }
                                                if (state is MesesEmpty) {
                                                  return Center(
                                                    child: Text(
                                                      'No hay meses disponibles',
                                                      style: theme.textTheme
                                                          .titleMedium,
                                                    ),
                                                  );
                                                }
                                                return SizedBox.shrink();
                                              },
                                            )
                                          ],
                                        ),
                                      ],
                                    );
                                  }).toList(),
                                ),
                              );
                            }
                            if (state is PeriodosError) {
                              return Center(
                                child: Text(
                                  'Algo salio mal...',
                                  style: theme.textTheme.titleMedium,
                                ),
                              );
                            }
                            if (state is PeriodosEmpty) {
                              return Center(
                                child: Text(
                                  'No hay nada que mostrar',
                                  style: theme.textTheme.titleMedium,
                                ),
                              );
                            }
                            return SizedBox.shrink();
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
