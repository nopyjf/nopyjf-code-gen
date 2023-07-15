import 'package:flutter/material.dart';

import '../../bloc/selection_bloc.dart';
import '../../model/selection_model.dart';
import 'selection_item.dart';

class SelectList extends StatelessWidget {
  const SelectList({Key? key, required this.data}) : super(key: key);

  final SelectionState data;

  @override
  Widget build(BuildContext context) {
    List<SelectionWidget> dataSources = data.model.dataSources;

    ElevatedButton(onPressed: () {  }, child: null,);

    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: dataSources.length,
      itemBuilder: (BuildContext context, int index) {
        return SelectionItem(
          data: dataSources[index],
        );
      },
    );
  }
}
