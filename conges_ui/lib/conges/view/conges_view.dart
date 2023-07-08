// ignore_for_file: use_build_context_synchronously

import 'package:conges_ui/conges/conges_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_month_picker/flutter_month_picker.dart';
import 'package:intl/intl.dart';

import '../conges_event.dart';
import '../conges_state.dart';

class CongesView extends StatelessWidget {
  const CongesView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CongesBloc, CongesState>(
      builder: (context, state) {
        if (state is CongesStateInitial) {
          return Center(
            child: ListView(
              children: [
                ListTile(
                  title: const Text('Période mensuelle'),
                  subtitle: Text(state.selectedPeriodeName),
                  onTap: () async {
                    final selectedDate = await showMonthPicker(
                      context: context,
                      firstDate: DateTime(DateTime.now().year - 1, 1),
                      lastDate: DateTime(DateTime.now().year + 1, 12),
                      initialDate: state.selectedPeriodeName.isEmpty
                          ? DateTime.now()
                          : DateTime.parse("${state.selectedPeriodeName}-01"),
                    );
                    if (selectedDate != null) {
                      context.read<CongesBloc>().add(
                            CongesSelectionnePeriode(
                              selectedDate: selectedDate,
                            ),
                          );
                    }
                  },
                ),
                ListTile(
                  title: const Text('Début des congés'),
                  subtitle: Text(state.selectedDebutConges == null
                      ? ""
                      : DateFormat("yyyy-MM-dd")
                          .format(state.selectedDebutConges!)),
                  onTap: () async {
                    final selectedDate = await showDatePicker(
                      context: context,
                      firstDate: DateTime(DateTime.now().year - 1, 1),
                      lastDate: DateTime(DateTime.now().year + 1, 12),
                      initialDate: state.selectedDebutConges ?? DateTime.now(),
                    );
                    if (selectedDate != null) {
                      context.read<CongesBloc>().add(
                            CongesSelectionneDebutConges(
                              selectedDate: selectedDate,
                            ),
                          );
                    }
                  },
                ),
                ListTile(
                  title: const Text('Fin des congés'),
                  subtitle: Text(state.selectedFinConges == null
                      ? ""
                      : DateFormat("yyyy-MM-dd")
                          .format(state.selectedFinConges!)),
                  onTap: () async {
                    final selectedDate = await showDatePicker(
                      context: context,
                      firstDate: DateTime(DateTime.now().year - 1, 1),
                      lastDate: DateTime(DateTime.now().year + 1, 12),
                      initialDate: state.selectedFinConges ?? DateTime.now(),
                    );
                    if (selectedDate != null) {
                      context.read<CongesBloc>().add(
                            CongesSelectionneFinConges(
                              selectedDate: selectedDate,
                            ),
                          );
                    }
                  },
                ),
                ElevatedButton(
                  onPressed: () =>
                      context.read<CongesBloc>().add(CongesCalculate()),
                  child: const Text('Calculer les jours de travail'),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: (state is CongesStateAvance)
                      ? state.selectedPeriode.dates
                          .map((e) => Text(DateFormat("yyyy-MM-dd").format(e)))
                          .toList()
                      : [],
                )
              ],
            ),
          );
        }
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
