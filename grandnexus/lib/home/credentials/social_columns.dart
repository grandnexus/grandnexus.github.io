import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:grandnexus/utils.dart';

class SocialColumns extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        IconButton(
          icon: Icon(FontAwesomeIcons.linkedinIn),
          iconSize: 25,
          onPressed: () => launchURL('https://bit.ly/jasonchoo-linkedin'),
        ),
        IconButton(
          icon: Icon(FontAwesomeIcons.github),
          iconSize: 25,
          onPressed: () => launchURL('https://bit.ly/jasonchoo-github'),
        ),
        IconButton(
          icon: Icon(FontAwesomeIcons.medium),
          iconSize: 25,
          onPressed: () => launchURL('https://bit.ly/jasonchoo-medium'),
        ),
        IconButton(
          icon: Icon(FontAwesomeIcons.dev),
          iconSize: 25,
          onPressed: () => launchURL('https://bit.ly/jasonchoo-devpost'),
        ),
        IconButton(
          icon: Icon(FontAwesomeIcons.twitter),
          iconSize: 25,
          onPressed: () => launchURL('https://bit.ly/jasonchoo-twitter'),
        ),
      ],
    );
  }
}
