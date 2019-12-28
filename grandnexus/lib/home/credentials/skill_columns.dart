import 'package:flutter/material.dart';

import 'package:grandnexus/common/skill_button.dart';
import 'package:grandnexus/utils.dart';

class SkillColumns extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 800.0,
      padding: const EdgeInsets.all(10.0),
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SkillButton(
            text: 'Flutter',
            textColor: Colors.white,
            buttonColor: Colors.blue,
            onPressed: () => launchURL('https://flutter.dev'),
          ),
          const SizedBox(width: 10.0),
          SkillButton(
            text: 'Firebase',
            textColor: Colors.black,
            buttonColor: Colors.amber[500],
            onPressed: () => launchURL('https://firebase.google.com'),
          ),
          const SizedBox(width: 10.0),
          SkillButton(
            text: 'Golang',
            textColor: Colors.white,
            buttonColor: Colors.cyan,
            onPressed: () => launchURL('https://go.dev'),
          ),
          const SizedBox(width: 10.0),
          SkillButton(
            text: 'JavaScript',
            textColor: Colors.black,
            buttonColor: Colors.yellow,
            onPressed: () => launchURL(
                'https://developer.mozilla.org/en-US/docs/Web/JavaScript'),
          ),
          const SizedBox(width: 10.0),
        ],
      ),
    );
  }
}
