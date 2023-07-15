import 'package:flutter/material.dart';

Dialog selectionResultDialog({
  required BuildContext context,
  required String cmd,
}) {
  return Dialog.fullscreen(
    child: Scaffold(
      appBar: AppBar(
        title: const Text("Result"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 48,
          right: 48,
          top: 32,
        ),
        child: SelectableText(cmd),
      ),
    ),
  );
}
