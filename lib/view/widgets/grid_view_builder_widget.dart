import 'package:flutter/material.dart';

class GridViewBuilder extends StatelessWidget {
  final int? itemCount;
  final IndexedWidgetBuilder? builder;
  final SliverGridDelegate? sliverGridDelegate;

  const GridViewBuilder(
      {Key? key, this.builder, this.itemCount, this.sliverGridDelegate})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
       // primary: false,
        padding: const EdgeInsets.all(0),
        gridDelegate: sliverGridDelegate!,
        itemCount: itemCount,
        itemBuilder: builder!);
  }
}
