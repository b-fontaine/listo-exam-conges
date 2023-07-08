abstract class CongesEvent {}

class CongesSelectDate extends CongesEvent {
  final DateTime selectedDate;

  CongesSelectDate({required this.selectedDate});
}

class CongesSelectionnePeriode extends CongesSelectDate {
  CongesSelectionnePeriode({required DateTime selectedDate})
      : super(selectedDate: selectedDate);
}

class CongesSelectionneDebutConges extends CongesSelectDate {
  CongesSelectionneDebutConges({required DateTime selectedDate})
      : super(selectedDate: selectedDate);
}

class CongesSelectionneFinConges extends CongesSelectDate {
  CongesSelectionneFinConges({required DateTime selectedDate})
      : super(selectedDate: selectedDate);
}

class CongesCalculate extends CongesEvent {}
