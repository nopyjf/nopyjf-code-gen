import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';

import '../model/selection_model.dart';

part 'selection_event.dart';

part 'selection_state.dart';

class SelectBloc extends Bloc<SelectionEvent, SelectionState> {
  SelectBloc(super.initialState) {
    on<SelectionComponentEvent>(
      (
        SelectionComponentEvent event,
        Emitter<void> emit,
      ) async {
        Selection model = const Selection(id: '123');
        SelectionState state = SelectionState(model: model);
        emit(state);
      },
    );
  }
}
