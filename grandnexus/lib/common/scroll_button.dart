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
    return Align(
      alignment: isScrollUp ? Alignment.topCenter : Alignment.bottomCenter,
      child: IconButton(
        color: color,
        icon: Icon(icon),
        onPressed: () => onPressed(),
      ),
    );
  }
}
