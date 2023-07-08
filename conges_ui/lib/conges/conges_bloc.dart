import 'dart:async';

import 'package:conges_ui/conges/conges_interactor.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import 'conges_event.dart';
import 'conges_state.dart';

class CongesBloc extends Bloc<CongesEvent, CongesState> {
  final CongesInteractor _interactor = CongesInteractor();

  CongesBloc() : super(CongesStateInitial()) {
    on<CongesSelectionnePeriode>(_selectionnePeriode);
    on<CongesSelectionneDebutConges>(_selectionneDebutConges);
    on<CongesSelectionneFinConges>(_selectionneFinConges);
    on<CongesCalculate>(_calculate);
  }

  FutureOr<void> _selectionnePeriode(
    CongesSelectionnePeriode event,
    Emitter<CongesState> emit,
  ) {
    CongesStateInitial oldState = state as CongesStateInitial;
    emit(
      CongesStateInitial(
        selectedPeriodeName: DateFormat("yyyy-MM").format(event.selectedDate),
        selectedDebutConges: oldState.selectedDebutConges,
        selectedFinConges: oldState.selectedFinConges,
      ),
    );
  }

  FutureOr<void> _selectionneDebutConges(
    CongesSelectionneDebutConges event,
    Emitter<CongesState> emit,
  ) {
    CongesStateInitial oldState = state as CongesStateInitial;
    emit(
      CongesStateInitial(
        selectedPeriodeName: oldState.selectedPeriodeName,
        selectedDebutConges: event.selectedDate,
        selectedFinConges: oldState.selectedFinConges,
      ),
    );
  }

  FutureOr<void> _selectionneFinConges(
      CongesSelectionneFinConges event, Emitter<CongesState> emit) {
    CongesStateInitial oldState = state as CongesStateInitial;
    emit(
      CongesStateInitial(
        selectedPeriodeName: oldState.selectedPeriodeName,
        selectedDebutConges: oldState.selectedDebutConges,
        selectedFinConges: event.selectedDate,
      ),
    );
  }

  FutureOr<void> _calculate(CongesCalculate event, Emitter<CongesState> emit) {
    CongesStateInitial oldState = state as CongesStateInitial;
    emit(
      CongesStateAvance(
        selectedPeriode: _interactor.creePeriodeEtRetireConges(
          oldState.selectedPeriodeName,
          oldState.selectedDebutConges ?? DateTime.now(),
          oldState.selectedFinConges ?? DateTime.now(),
        ),
        selectedDebutConges: oldState.selectedDebutConges,
        selectedFinConges: oldState.selectedFinConges,
      ),
    );
  }
}
