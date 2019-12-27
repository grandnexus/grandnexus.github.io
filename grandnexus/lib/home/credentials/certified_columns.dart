import 'package:flutter/material.dart';

import 'package:grandnexus/utils.dart';

class CertifiedColumns extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: InkWell(
              onTap: () => showImageDialog(
                context,
                const Image(
                  image: AssetImage(
                    'images/certificate-itil.png',
                  ),
                ),
              ),
              child: const Image(
                image: AssetImage(
                  'images/certified-itil.png',
                ),
              ),
            ),
          ),
          const SizedBox(width: 30.0),
          Expanded(
            child: InkWell(
              onTap: () => launchURL('https://bit.ly/jasonchoo-gce'),
              child: const Image(
                image: AssetImage(
                  'images/certified-gce.png',
                ),
              ),
            ),
          ),
          const SizedBox(width: 30.0),
          Expanded(
            child: InkWell(
              onTap: () => launchURL('https://bit.ly/jasonchoo-csm'),
              child: const Image(
                image: AssetImage(
                  'images/certified-csm.png',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
