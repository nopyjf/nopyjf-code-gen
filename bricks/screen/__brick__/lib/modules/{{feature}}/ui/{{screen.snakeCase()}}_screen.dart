import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/{{screen.snakeCase()}}_bloc.dart';
import '../model/{{screen.snakeCase()}}_model.dart';

class {{screen.pascalCase()}}Screen extends StatefulWidget {
  const {{screen.pascalCase()}}Screen({super.key});

  @override
  State<{{screen.pascalCase()}}Screen> createState() => _{{screen.pascalCase()}}ScreenState();
}

class _{{screen.pascalCase()}}ScreenState extends State<{{screen.pascalCase()}}Screen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => {{screen.pascalCase()}}Bloc(
        const {{screen.pascalCase()}}State(model: {{screen.pascalCase()}}()),
      ),
      child: BlocBuilder<{{screen.pascalCase()}}Bloc, {{screen.pascalCase()}}State>(
        builder: (context, state) {
          // TODO: Do layout here !!!
          return Container();
        },
      ),
    );
  }
}
