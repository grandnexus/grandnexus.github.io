import 'package:flutter/material.dart';

import 'package:grandnexus/common/alphabet_column.dart';

class NameColumns extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600.0,
      child: Row(
        children: <Widget>[
          const AlphabetColumn(
            alphabet: 'J',
            color: Colors.black,
          ),
          const AlphabetColumn(
            alphabet: 'A',
            color: Colors.black,
          ),
          const AlphabetColumn(
            alphabet: 'S',
            color: Colors.black,
          ),
          const AlphabetColumn(
            alphabet: 'O',
            color: Colors.black,
          ),
          const AlphabetColumn(
            alphabet: 'N',
            color: Colors.black,
          ),
          const SizedBox(width: 20.0),
          const AlphabetColumn(
            alphabet: 'C',
            color: Colors.black,
          ),
          const AlphabetColumn(
            alphabet: 'H',
            color: Colors.black,
          ),
          const AlphabetColumn(
            alphabet: 'O',
            color: Colors.black,
          ),
          const AlphabetColumn(
            alphabet: 'O',
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
