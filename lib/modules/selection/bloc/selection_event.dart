part of 'selection_bloc.dart';

class SelectionEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class StartSelectionEvent extends SelectionEvent {}

class RequestMasonEvent extends SelectionEvent {
  RequestMasonEvent({
    required this.feature,
    required this.screen,
  });

  final String feature;
  final String screen;

  @override
  List<Object?> get props => [feature, screen];
}

class AddWidgetEvent extends SelectionEvent {
  AddWidgetEvent({required this.request});

  final SelectionWidgetRequest request;

  @override
  List<Object?> get props => [request];
}
