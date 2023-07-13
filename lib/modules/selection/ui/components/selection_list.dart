import 'package:flutter/material.dart';

import 'find_text.dart';
import 'selection_item.dart';

class SelectList extends StatefulWidget {
  const SelectList({Key? key}) : super(key: key);

  @override
  State<SelectList> createState() => _SelectListState();
}

class _SelectListState extends State<SelectList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return const FindText();
      },
    );
  }
}
