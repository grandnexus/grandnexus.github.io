import 'package:flutter/material.dart';

import 'package:grandnexus/utils.dart';

class CertifiedColumns extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            InkWell(
              onTap: () => showImageDialog(
                context,
                const Image(
                  width: 120,
                  image: AssetImage(
                    'images/certificate-itil.webp',
                  ),
                ),
              ),
              child: const Image(
                width: 120,
                image: AssetImage(
                  'images/certified-itil.webp',
                ),
              ),
            ),
            const SizedBox(width: 30.0),
            InkWell(
              onTap: () => launchURL('https://bit.ly/jasonchoo-gce'),
              child: const Image(
                width: 120,
                image: AssetImage(
                  'images/certified-gce.webp',
                ),
              ),
            ),
            const SizedBox(width: 30.0),
            InkWell(
              onTap: () => launchURL('https://bit.ly/jasonchoo-csm'),
              child: const Image(
                width: 150,
                image: AssetImage(
                  'images/certified-csm.webp',
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
