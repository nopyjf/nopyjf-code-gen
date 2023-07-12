part of '{{screen.snakeCase()}}_bloc.dart';

class {{screen.pascalCase()}}State extends Equatable {
  const {{screen.pascalCase()}}State({required this.model});

  final {{screen.pascalCase()}} model;

  @override
  List<Object?> get props => [model];
}
