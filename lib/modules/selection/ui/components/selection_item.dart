import 'package:flutter/material.dart';

import '../../model/selection_model.dart';
import 'selection_add_dialog.dart';

class SelectionItem extends StatelessWidget {
  const SelectionItem({
    Key? key,
    required this.data,
  }) : super(key: key);

  final SelectionWidget data;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(data.name),
      onTap: () {
        showDialog(
          context: context,
          builder: (BuildContext dialogContext) {
            return selectAddDialog(
              context: context,
              data: data,
            );
          },
        );
      },
    );
  }
}
