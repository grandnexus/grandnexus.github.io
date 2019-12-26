import 'package:flutter/material.dart';

class PortfolioItem extends StatelessWidget {
  const PortfolioItem({
    this.index,
    this.color,
  });

  final String index;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      color: color,
      child: Center(
        child: Image.network(
          'https://picsum.photos/seed/$index/200/200',
        ),
      ),
    );
  }
}
