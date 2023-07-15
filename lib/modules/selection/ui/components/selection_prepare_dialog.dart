import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/selection_bloc.dart';
import '../../model/selection_model.dart';
import 'selection_result_dialog.dart';

Dialog selectionPrepareDialog({
  required BuildContext context,
  required SelectionState state,
}) {
  TextEditingController featureTxtCtrl = TextEditingController();
  TextEditingController screenTxtCtrl = TextEditingController();

  return Dialog.fullscreen(
    child: Scaffold(
      appBar: AppBar(
        title: const Text("Preparing..."),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 48,
          right: 48,
          top: 32,
        ),
        child: SizedBox.expand(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 8,
                  bottom: 8,
                ),
                child: TextField(
                  controller: featureTxtCtrl,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Feature',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 8,
                  bottom: 8,
                ),
                child: TextField(
                  controller: screenTxtCtrl,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Screen',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          String cmd = transformCmd(
            state.model,
            featureTxtCtrl.text,
            screenTxtCtrl.text,
          );

          showDialog(
            context: context,
            builder: (BuildContext _) {
              return selectionResultDialog(
                context: context,
                cmd: cmd,
              );
            },
          );
        },
        label: const Text('OK'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    ),
  );
}
