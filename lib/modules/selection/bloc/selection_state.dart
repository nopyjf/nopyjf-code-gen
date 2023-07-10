part of 'selection_bloc.dart';

class SelectionState extends Equatable {
  const SelectionState({required this.model});

  final Selection model;

  @override
  List<Object?> get props => [model];
}
