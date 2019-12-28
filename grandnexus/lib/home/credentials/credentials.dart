import 'package:flutter/material.dart';

import 'package:grandnexus/common/scroll_button.dart';

import 'package:grandnexus/home/credentials/certified_columns.dart';
import 'package:grandnexus/home/credentials/name_columns.dart';
import 'package:grandnexus/home/credentials/skill_columns.dart';
import 'package:grandnexus/home/credentials/social_columns.dart';

class Credentials extends StatelessWidget {
  const Credentials({
    @required this.onScrollDown,
  }) : assert(onScrollDown != null);

  final Function onScrollDown;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      color: Colors.white,
      child: Stack(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image(
                height: MediaQuery.of(context).size.height / 2.5,
                image: const AssetImage(
                  'images/headshot.png',
                ),
              ),
              const SizedBox(height: 20.0),
              NameColumns(),
              const SizedBox(height: 20.0),
              SocialColumns(),
              const SizedBox(height: 20.0),
              CertifiedColumns(),
              const SizedBox(height: 30.0),
              SkillColumns(),
            ],
          ),
          ScrollButton(
            onPressed: onScrollDown,
          ),
        ],
      ),
    );
  }
}
