import 'package:conges_domain/periode/model/periode.dart';

abstract class CongesState {}

class CongesStateInitial extends CongesState {
  final String selectedPeriodeName;
  final DateTime? selectedDebutConges;
  final DateTime? selectedFinConges;

  CongesStateInitial({
    this.selectedPeriodeName = "",
    this.selectedDebutConges,
    this.selectedFinConges,
  });
}

class CongesStateAvance extends CongesStateInitial {
  final Period selectedPeriode;
  final DateTime? selectedDebutConges;
  final DateTime? selectedFinConges;

  CongesStateAvance({
    required this.selectedPeriode,
    this.selectedDebutConges,
    this.selectedFinConges,
  }) : super(
    selectedPeriodeName: selectedPeriode.name,
    selectedDebutConges: selectedDebutConges,
    selectedFinConges: selectedFinConges,
  );
}
