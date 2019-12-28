import 'package:flutter/material.dart';

import 'package:grandnexus/common/snap_list_view.dart';
import 'package:grandnexus/home/credentials/credentials.dart';
import 'package:grandnexus/home/portfolios/portfolios.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  ScrollController _controller;

  @override
  void initState() {
    _controller = ScrollController();
    super.initState();
  }

  void scrollToPreviousSection() => _controller.animateTo(0,
      curve: Curves.fastOutSlowIn, duration: const Duration(milliseconds: 900));

  void scrollToNextSection(double height) => _controller.animateTo(height,
      curve: Curves.fastOutSlowIn, duration: const Duration(milliseconds: 900));

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SnapListView(
        controller: _controller,
        scrollDirection: Axis.vertical,
        itemExtent: height,
        children: <Widget>[
          // [Home] Credentials Section
          Credentials(
            onScrollDown: () => scrollToNextSection(height),
          ),
          // [Home] Portfolios Section
          Portfolios(
            onScrollUp: () => scrollToPreviousSection(),
          ),
        ],
      ),
    );
  }
}
