import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:grandnexus/utils.dart';
import 'package:grandnexus/common/scroll_button.dart';
import 'package:grandnexus/home/portfolios/portfolio_item.dart';

// TODO: To be completed by real portfolio data.
class Portfolios extends StatelessWidget {
  const Portfolios({
    @required this.onScrollUp,
  }) : assert(onScrollUp != null);

  final Function onScrollUp;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Stack(
        children: <Widget>[
          CustomScrollView(
            slivers: <Widget>[
              SliverGrid(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200.0,
                  mainAxisSpacing: 5.0,
                  crossAxisSpacing: 5.0,
                  childAspectRatio: 1.0,
                ),
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    return PortfolioItem(
                      index: '${index + math.Random().nextInt(100)}',
                      color: getRandomColor(),
                    );
                  },
                  childCount: 203,
                ),
              ),
            ],
          ),
          ScrollButton(
            color: Colors.white,
            icon: FontAwesomeIcons.chevronUp,
            onPressed: onScrollUp,
            isScrollUp: true,
          ),
        ],
      ),
    );
  }
}
