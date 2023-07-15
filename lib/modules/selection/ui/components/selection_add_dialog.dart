import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/selection_bloc.dart';
import '../../model/selection_model.dart';

Dialog selectAddDialog({
  required BuildContext context,
  required SelectionWidget data,
}) {
  TextEditingController txtCtrl = TextEditingController();

  return Dialog.fullscreen(
    child: Scaffold(
      appBar: AppBar(
        title: const Text("Add Widget"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 48,
          right: 48,
          top: 32,
        ),
        child: SizedBox.expand(
          child: TextField(
            controller: txtCtrl,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Name',
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          context.read<SelectionBloc>().add(
                AddWidgetEvent(
                  request: SelectionWidgetRequest(
                    id: data.id,
                    widget: data.name,
                    name: txtCtrl.text,
                  ),
                ),
              );

          Navigator.of(context).pop();
        },
        label: const Text('Add'),
        icon: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    ),
  );
}
