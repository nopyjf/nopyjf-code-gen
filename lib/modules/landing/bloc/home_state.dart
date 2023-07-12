part of 'home_bloc.dart';

class HomeState extends Equatable {
  const HomeState({required this.model});

  final Home model;

  @override
  List<Object?> get props => [model];
}
