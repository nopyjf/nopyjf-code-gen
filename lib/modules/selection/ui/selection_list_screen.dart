import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/selection_bloc.dart';
import 'components/selection_list.dart';
import 'components/selection_prepare_dialog.dart';

class SelectionListScreen extends StatefulWidget {
  const SelectionListScreen({super.key, required this.title});

  final String title;

  @override
  State<SelectionListScreen> createState() => _SelectionListScreenState();
}

class _SelectionListScreenState extends State<SelectionListScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SelectionBloc()..add(StartSelectionEvent()),
      child: BlocBuilder<SelectionBloc, SelectionState>(
        builder: (context, state) {
          return _buildWidget(context, state);
        },
      ),
    );
  }

  Widget _buildWidget(BuildContext context, SelectionState state) {
    FloatingActionButton(
      onPressed: () {},
      child: const Text('Generate'),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SelectList(data: state),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          showDialog(
            context: context,
            builder: (_) {
              return selectionPrepareDialog(
                context: context,
                state: state,
              );
            },
          );
        },
        label: const Text('Generate'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
