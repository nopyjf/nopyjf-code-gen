import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../model/selection_model.dart';

part 'selection_event.dart';

part 'selection_state.dart';

class SelectionBloc extends Bloc<SelectionEvent, SelectionState> {
  SelectionBloc() : super(defaultSelectionState) {
    on<StartSelectionEvent>(_onStartSelectionEvent);
    on<RequestMasonEvent>(_onRequestMasonEvent);
    on<AddWidgetEvent>(_onAddWidget);
  }

  void _onStartSelectionEvent(
    StartSelectionEvent event,
    Emitter<void> emit,
  ) async {
    emit(const SelectionState(
      status: SelectionStateStatus.start,
      model: defaultSelection,
    ));
  }

  void _onRequestMasonEvent(
    RequestMasonEvent event,
    Emitter<void> emit,
  ) {
    String cmd = transformCmd(state.model, event.feature, event.screen);

    emit(
      SelectionState(
        status: SelectionStateStatus.requestMason,
        model: Selection(
          dataSources: state.model.dataSources,
          requests: state.model.requests,
          cmd: cmd,
          feature: event.feature,
          screen: event.screen,
        ),
      ),
    );
  }

  void _onAddWidget(
    AddWidgetEvent event,
    Emitter<void> emit,
  ) {
    List<SelectionWidgetRequest> requests = [...state.model.requests];
    requests.add(event.request);

    emit(
      SelectionState(
        status: SelectionStateStatus.add,
        model: Selection(
          dataSources: state.model.dataSources,
          requests: requests,
          cmd: state.model.cmd,
          feature: state.model.feature,
          screen: state.model.screen,
        ),
      ),
    );
  }
}
