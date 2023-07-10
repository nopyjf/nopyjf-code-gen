import 'package:flutter/material.dart';

class SelectionItem extends StatelessWidget {
  const SelectionItem({Key? key, required this.index}) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Item $index'),
      onTap: () {},
    );
  }
}
