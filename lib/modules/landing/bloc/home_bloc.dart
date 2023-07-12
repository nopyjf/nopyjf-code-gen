import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../model/home_model.dart';

part 'home_event.dart';

part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(super.initialState) {
    on<HomeEvent>(
      (
        HomeEvent event,
        Emitter<void> emit,
      ) async {
        // TODO: do logic here !!!
      },
    );
  }
}