import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PersonalWebsitePage extends StatelessWidget {
  const PersonalWebsitePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF101010),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
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
            style: const TextStyle(
              fontSize: 24.0,
              color: Color(0xFF4285F4),
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () async {
                const url = 'mailto:japhetmerto@gmail.com?subject='
                    'Hello%20Japhet&body=Some%20body%20text%20here.';
                if (await canLaunch(url)) {
                  await launch(url);
                }
              },
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
                  style: const TextStyle(color: Color(0xFF2ea44f)),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () async {
                      const url = 'https://github.com/japhetobsioma';
                      if (await canLaunch(url)) {
                        await launch(url);
                      }
                    },
                ),
                const TextSpan(
                  text: ' where I maintain most of my software. I\'m also'
                      ' on ',
                ),
                TextSpan(
                  text: 'Facebook',
                  style: const TextStyle(color: Color(0xFF4267B2)),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () async {
                      const url = 'https://www.facebook.com/obsiomajaphetmert/';
                      if (await canLaunch(url)) {
                        await launch(url);
                      }
                    },
                ),
                const TextSpan(text: ', '),
                TextSpan(
                  text: 'Twitter',
                  style: const TextStyle(color: Color(0xFF1DA1F2)),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () async {
                      const url = 'https://twitter.com/tehpajj';
                      if (await canLaunch(url)) {
                        await launch(url);
                      }
                    },
                ),
                const TextSpan(text: ', and '),
                TextSpan(
                  text: 'LinkedIn',
                  style: const TextStyle(color: Color(0xFF2867B2)),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () async {
                      const url =
                          'https://www.linkedin.com/in/japhetmertobsioma/';
                      if (await canLaunch(url)) {
                        await launch(url);
                      }
                    },
                ),
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
                const TextSpan(
                  text: 'Currently, I am a student at ',
                  style: TextStyle(
                    fontSize: 24.0,
                    color: Colors.white,
                  ),
                ),
                TextSpan(
                  text: 'Sunway College',
                  style: const TextStyle(
                    fontSize: 24.0,
                    color: Colors.orange,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () async {
                      const url = 'https://college.sunway.edu.my/';
                      if (await canLaunch(url)) {
                        await launch(url);
                      }
                    },
                ),
                const TextSpan(
                  text: ' taking a Diploma in Information Technology.',
                  style: TextStyle(
                    fontSize: 24.0,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
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
            ),
          ),
        ),
      ],
    );
  }
}
