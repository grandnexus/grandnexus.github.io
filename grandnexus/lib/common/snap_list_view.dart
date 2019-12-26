import 'package:flutter/material.dart';

import 'package:grandnexus/common/snap_list_scroll_physics.dart';

class SnapListView extends StatefulWidget {
  const SnapListView({
    this.scrollDirection,
    this.controller,
    @required this.children,
    @required this.itemExtent,
    this.onItemChanged,
    this.padding = const EdgeInsets.all(0.0),
  })  : assert(itemExtent > 0),
        itemCount = null,
        itemBuilder = null;

  const SnapListView.builder({
    this.scrollDirection,
    this.controller,
    @required this.itemBuilder,
    this.itemCount,
    @required this.itemExtent,
    this.onItemChanged,
    this.padding = const EdgeInsets.all(0.0),
  })  : assert(itemExtent > 0),
        children = null;

  final Axis scrollDirection;
  final ScrollController controller;

  final IndexedWidgetBuilder itemBuilder;
  final List<Widget> children;
  final int itemCount;

  final double itemExtent;
  final ValueChanged<int> onItemChanged;

  final EdgeInsets padding;

  @override
  _SnapListViewState createState() => _SnapListViewState();
}

class _SnapListViewState extends State<SnapListView> {
  int _lastItem = 0;

  @override
  Widget build(BuildContext context) {
    final double startPadding = widget.scrollDirection == Axis.horizontal
        ? widget.padding.left
        : widget.padding.top;
    final SnapListScrollPhysics scrollPhysics = SnapListScrollPhysics(
        mainAxisStartPadding: startPadding, itemExtent: widget.itemExtent);
    final ListView listView = widget.children != null
        ? ListView(
            scrollDirection: widget.scrollDirection,
            controller: widget.controller,
            children: widget.children,
            itemExtent: widget.itemExtent,
            physics: scrollPhysics,
            padding: widget.padding,
          )
        : ListView.builder(
            scrollDirection: widget.scrollDirection,
            controller: widget.controller,
            itemBuilder: widget.itemBuilder,
            itemCount: widget.itemCount,
            itemExtent: widget.itemExtent,
            physics: scrollPhysics,
            padding: widget.padding,
          );
    return NotificationListener<ScrollNotification>(
        child: listView,
        onNotification: (ScrollNotification notif) {
          if (notif.depth == 0 &&
              widget.onItemChanged != null &&
              notif is ScrollUpdateNotification) {
            final int currItem =
                (notif.metrics.pixels - startPadding) ~/ widget.itemExtent;
            if (currItem != _lastItem) {
              _lastItem = currItem;
              widget.onItemChanged(currItem);
            }
          }
          return false;
        });
  }
}
