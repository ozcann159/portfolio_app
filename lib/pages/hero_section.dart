import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_app/utils/constants.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:url_launcher/url_launcher.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.9,
      width: double.infinity,
      padding: const EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            backgroundColor,
            cardColor.withOpacity(0.9),
          ],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 70,
            backgroundColor: primaryColor,
            child: const Text(
              'EÖ',
              style: TextStyle(
                fontSize: 40,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: defaultPadding * 2),
          Text(
            name,
            style: Theme.of(context).textTheme.displayLarge,
          ),
          const SizedBox(height: defaultPadding),
          DefaultTextStyle(
            style: Theme.of(context).textTheme.displayMedium!,
            child: AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText(
                  jobTitle,
                  speed: const Duration(milliseconds: 100),
                ),
                TypewriterAnimatedText(
                  'Flutter Developer',
                  speed: const Duration(milliseconds: 100),
                ),
                TypewriterAnimatedText(
                  'UI/UX Enthusiast',
                  speed: const Duration(milliseconds: 100),
                ),
              ],
              repeatForever: true,
            ),
          ),
          const SizedBox(height: defaultPadding * 2),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: const Icon(Icons.email),
                onPressed: () {},
                color: primaryColor,
                iconSize: 30,
              ),
              IconButton(
                icon: const Icon(Icons.link),
                onPressed: () {},
                color: primaryColor,
                iconSize: 30,
              ),
              IconButton(
                icon: const FaIcon(
                    FontAwesomeIcons.github), // GitHub ikonu burada
                onPressed: () {},
                color: primaryColor,
                iconSize: 30,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
