import 'package:flutter/material.dart';

/// [AlphabetColumn] is to represent a single digit integer.
class AlphabetColumn extends StatelessWidget {
  const AlphabetColumn({
    Key key,
    @required this.alphabet,
    @required this.color,
    this.flex = 1,
  })  : assert(alphabet != null),
        assert(color != null),
        super(key: key);

  final String alphabet;
  final Color color;
  final int flex;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: AspectRatio(
        aspectRatio: 0.9,
        child: AnimatedContainer(
          padding: const EdgeInsets.all(3.0),
          duration: const Duration(milliseconds: 430),
          curve: Curves.ease,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(5.0),
            ),
            color: color,
          ),
          margin: const EdgeInsets.all(6.0),
          child: Center(
            child: FittedBox(
              fit: BoxFit.fitHeight,
              child: Text(
                alphabet,
                style: Theme.of(context).textTheme.display4.copyWith(
                      color: Colors.white,
                      fontSize: 200,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Bungee',
                    ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
