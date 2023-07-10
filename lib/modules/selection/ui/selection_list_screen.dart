import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/selection_bloc.dart';
import '../model/selection_model.dart';
import 'components/selection_list.dart';

class SelectionListScreen extends StatefulWidget {
  const SelectionListScreen({super.key, required this.title});

  final String title;

  @override
  State<SelectionListScreen> createState() => _SelectionListScreenState();
}

class _SelectionListScreenState extends State<SelectionListScreen> {
  @override
  Widget build(BuildContext context) {
    const model = Selection(id: '123');
    const state = SelectionState(model: model);

    return BlocProvider(
        create: (_) => SelectBloc(state),
        child:
            BlocBuilder<SelectBloc, SelectionState>(builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Theme.of(context).colorScheme.inversePrimary,
              title: Text(widget.title),
            ),
            body: const SelectList(),
            floatingActionButton: FloatingActionButton.extended(
              onPressed: () {
                context.read<SelectBloc>().add(SelectionComponentEvent());
              },
              label: const Text('Add'),
              icon: const Icon(Icons.add),
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerFloat,
          );
        }));
  }
}
