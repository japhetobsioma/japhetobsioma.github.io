import 'package:flutter/material.dart';

import '../common/contact_link.dart';
import '../helper/launch_link.dart';

class PersonalWebsitePage extends StatelessWidget {
  const PersonalWebsitePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0D1117),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              IntroText(),
              CurrentWorkText(),
              ProfileLinksText(),
              ContactMeText(),
            ],
          ),
        ),
      ),
    );
  }
}

class IntroText extends StatelessWidget {
  const IntroText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SizedBox(height: 230),
        SizedBox(
          width: 750.0,
          child: Text(
            'I\'m Japhet Obsioma, a software developer.',
            style: TextStyle(
              fontSize: 38.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}

class CurrentWorkText extends StatelessWidget {
  const CurrentWorkText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 38.0),
        SizedBox(
          width: 750.0,
          child: RichText(
            text: TextSpan(
              children: [
                const TextSpan(text: 'Currently, I am a student at '),
                TextSpan(
                  text: 'Sunway College',
                  style: const TextStyle(color: Colors.orange),
                  recognizer: launchLink(ContactLinks.sunwayCollege.url!),
                ),
                const TextSpan(
                  text: ' taking a Diploma in Information Technology.',
                ),
              ],
              style: const TextStyle(
                fontSize: 24.0,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class ProfileLinksText extends StatelessWidget {
  const ProfileLinksText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 24.0),
        SizedBox(
          width: 750.0,
          child: RichText(
            text: TextSpan(
              children: [
                const TextSpan(text: 'You can find me on '),
                TextSpan(
                    text: 'GitHub',
                    style: const TextStyle(color: Color(0xFF21262D)),
                    recognizer: launchLink(ContactLinks.github.url!)),
                const TextSpan(
                  text: ', where I maintain most of my software. I\'m also on ',
                ),
                TextSpan(
                    text: 'Facebook',
                    style: const TextStyle(color: Color(0xFF4267B2)),
                    recognizer: launchLink(ContactLinks.facebook.url!)),
                const TextSpan(text: ', '),
                TextSpan(
                    text: 'Twitter',
                    style: const TextStyle(color: Color(0xFF1DA1F2)),
                    recognizer: launchLink(ContactLinks.twitter.url!)),
                const TextSpan(text: ', and '),
                TextSpan(
                    text: 'LinkedIn',
                    style: const TextStyle(color: Color(0xFF2867B2)),
                    recognizer: launchLink(ContactLinks.linkedIn.url!)),
                const TextSpan(text: '.'),
              ],
              style: const TextStyle(fontSize: 24.0, color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}

class ContactMeText extends StatelessWidget {
  const ContactMeText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 48.0),
        RichText(
          text: TextSpan(
              text: 'Contact me',
              style: const TextStyle(fontSize: 24.0, color: Color(0xFF4285F4)),
              recognizer: launchLink(ContactLinks.contactMe.url!)),
        ),
      ],
    );
  }
}
