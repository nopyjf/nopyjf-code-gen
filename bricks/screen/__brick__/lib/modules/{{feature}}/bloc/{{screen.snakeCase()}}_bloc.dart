import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../model/{{screen.snakeCase()}}_model.dart';

part '{{screen.snakeCase()}}_event.dart';

part '{{screen.snakeCase()}}_state.dart';

class {{screen.pascalCase()}}Bloc extends Bloc<{{screen.pascalCase()}}Event, {{screen.pascalCase()}}State> {
  {{screen.pascalCase()}}Bloc(super.initialState) {
    on<{{screen.pascalCase()}}Event>(
      (
        {{screen.pascalCase()}}Event event,
        Emitter<void> emit,
      ) async {
        // TODO: do logic here !!!
      },
    );
  }
}