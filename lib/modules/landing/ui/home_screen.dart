import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/home_bloc.dart';
import '../model/home_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => HomeBloc(
        const HomeState(model: Home()),
      ),
      child: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          // TODO: Do layout here !!!
          return Container();
        },
      ),
    );
  }
}
