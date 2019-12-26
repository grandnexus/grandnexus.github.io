import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ScrollButton extends StatelessWidget {
  const ScrollButton({
    this.color = Colors.black,
    this.icon = FontAwesomeIcons.chevronDown,
    this.onPressed,
    this.isScrollUp = false,
  });

  final Color color;
  final IconData icon;
  final Function onPressed;
  final bool isScrollUp;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: MediaQuery.of(context).size.width / 2.1,
      top: isScrollUp ? 10 : null,
      bottom: isScrollUp ? null : 10,
      child: IconButton(
        color: color,
        icon: Icon(icon),
        onPressed: () => onPressed(),
      ),
    );
  }
}
