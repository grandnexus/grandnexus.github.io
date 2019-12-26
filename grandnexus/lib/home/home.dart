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

  void scrollToNextSection() => _controller.animateTo(1000,
      curve: Curves.fastOutSlowIn, duration: const Duration(milliseconds: 900));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SnapListView(
        controller: _controller,
        scrollDirection: Axis.vertical,
        itemExtent: MediaQuery.of(context).size.height,
        children: <Widget>[
          // [Home] Credentials Section
          Credentials(
            onScrollDown: scrollToNextSection,
          ),
          // [Home] Portfolios Section
          Portfolios(
            onScrollUp: scrollToPreviousSection,
          ),
        ],
      ),
    );
  }
}
