import 'package:flutter/material.dart';

class SkillButton extends StatelessWidget {
  const SkillButton({
    this.text,
    this.textColor = Colors.black,
    this.buttonColor = Colors.grey,
    this.onPressed,
  });

  final String text;
  final Color textColor;
  final Color buttonColor;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return Expanded(
      child: SizedBox(
        height: height / 25,
        child: FlatButton(
          color: buttonColor,
          onPressed: () => onPressed(),
          shape: const StadiumBorder(),
          child: FittedBox(
            fit: BoxFit.fitHeight,
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline.copyWith(
                    color: textColor,
                    fontFamily: 'Bungee',
                  ),
            ),
          ),
        ),
      ),
    );
  }
}
