import 'package:flutter/material.dart';
import 'package:portfolio_app/utils/constants.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding * 2),
      color: backgroundColor,
      child: Column(
        children: [
          Text(
            skillsTitle,
            style: Theme.of(context).textTheme.displayLarge,
          ),
          const SizedBox(height: defaultPadding * 2),
          Wrap(
            spacing: defaultPadding,
            runSpacing: defaultPadding,
            children: [
              _buildSkillCard(
                context,
                'Mobile Development',
                [
                  'Flutter',
                  'Dart',
                  'Firebase',
                  'REST API',
                  'State Management',
                ],
                Icons.phone_android,
              ),
              _buildSkillCard(
                context,
                'UI/UX Design',
                [
                  'Responsive Design',
                  'Material Design',
                  'Custom Animations',
                  'Prototyping',
                ],
                Icons.design_services,
              ),
              _buildSkillCard(
                context,
                'Development Tools',
                [
                  'Git',
                  'VS Code',
                  'Android Studio',
                  'Xcode',
                ],
                Icons.code,
              ),
            ],
          ),
          const SizedBox(height: defaultPadding * 2),
          _buildProgressSection(context),
        ],
      ),
    );
  }

  Widget _buildSkillCard(
  BuildContext context,
  String title,
  List<String> skills,
  IconData icon,
) {
  // Ekran genişliğine göre kart genişliğini ayarlama
  double screenWidth = MediaQuery.of(context).size.width;
  double cardWidth = screenWidth < tabletBreakpoint 
      ? screenWidth - (defaultPadding * 4)  // Mobil için tam genişlik
      : screenWidth < desktopBreakpoint 
          ? (screenWidth / 2) - (defaultPadding * 3)  // Tablet için 2 kolon
          : 300;  // Desktop için sabit genişlik

  return Container(
    width: cardWidth,
    padding: const EdgeInsets.all(defaultPadding),
    decoration: BoxDecoration(
      color: cardColor,
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          color: primaryColor.withOpacity(0.1),
          blurRadius: 10,
          offset: const Offset(0, 5),
        ),
      ],
    ),
    // ... existing code ...
  );
}
  }

  Widget _buildProgressSection(BuildContext context) {
    return Column(
      children: [
        Text(
          'Teknoloji Yetkinlikleri',
          style: Theme.of(context).textTheme.displayMedium,
        ),
        const SizedBox(height: defaultPadding),
        _buildProgressBar(context, 'Flutter', 0.9),
        _buildProgressBar(context, 'Dart', 0.85),
        _buildProgressBar(context, 'Firebase', 0.8),
        _buildProgressBar(context, 'UI/UX Design', 0.75),
      ],
    );
  }

  Widget _buildProgressBar(BuildContext context, String skill, double progress) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            skill,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(height: 5),
          LinearProgressIndicator(
            value: progress,
            backgroundColor: cardColor,
            valueColor: const AlwaysStoppedAnimation<Color>(primaryColor),
            minHeight: 8,
          ),
        ],
      ),
    );
  }
