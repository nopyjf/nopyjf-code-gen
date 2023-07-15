part of 'selection_bloc.dart';

// Status
enum SelectionStateStatus {
  start,
  add,
  requestMason,
}

// Main Model
class SelectionState extends Equatable {
  const SelectionState({
    required this.status,
    required this.model,
  });

  final SelectionStateStatus status;
  final Selection model;

  @override
  List<Object?> get props => [status, model];

  SelectionState clone() {
    return SelectionState(model: model, status: status);
  }
}

// Default State
const defaultSelectionState = SelectionState(
  status: SelectionStateStatus.start,
  model: defaultSelection,
);
