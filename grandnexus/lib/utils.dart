import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void showImageDialog(BuildContext context, Image image) {
  showDialog<Image>(
    barrierDismissible: true,
    context: context,
    builder: (_) => Material(
      child: InkWell(
        onTap: () => Navigator.pop(context),
        child: image,
      ),
    ),
  );
}

Future<void> launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

Color getRandomColor() =>
    Color((math.Random().nextDouble() * 0xFFFFFF).toInt() << 0)
        .withOpacity(1.0);
