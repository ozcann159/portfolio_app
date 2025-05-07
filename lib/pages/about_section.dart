import 'package:flutter/material.dart';
import 'package:portfolio_app/utils/constants.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding * 2),
      color: cardColor,
      child: Column(
        children: [
          Text(
            aboutTitle,
            style: Theme.of(context).textTheme.displayLarge,
          ),
          const SizedBox(height: defaultPadding * 2),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Merhaba, Ben Elif!',
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                    const SizedBox(height: defaultPadding),
                    Text(
                      'Mobil uygulama geliştirme konusunda tutkulu bir yazılım geliştiricisiyim. '
                      'Kullanıcı deneyimini ön planda tutarak, modern ve performanslı uygulamalar geliştirmeyi hedefliyorum.',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    const SizedBox(height: defaultPadding),
                    Text(
                      'Teknoloji dünyasındaki yenilikleri yakından takip ediyor ve sürekli kendimi geliştirmeye odaklanıyorum.',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ],
                ),
              ),
              const SizedBox(width: defaultPadding * 2),
              Expanded(
                flex: 1,
                child: Container(
                  padding: const EdgeInsets.all(defaultPadding),
                  decoration: BoxDecoration(
                    color: backgroundColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildInfoRow(Icons.school, 'Eğitim', 'Bilgisayar Programcılığı'),
                      const SizedBox(height: defaultPadding),
                      _buildInfoRow(Icons.work, 'Deneyim', 'Mobile Developer'),
                      const SizedBox(height: defaultPadding),
                      _buildInfoRow(Icons.location_on, 'Konum', 'Türkiye'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildInfoRow(IconData icon, String title, String content) {
    return Row(
      children: [
        Icon(icon, color: primaryColor),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                color: secondaryTextColor,
                fontSize: 14,
              ),
            ),
            Text(
              content,
              style: const TextStyle(
                color: textColor,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ],
    );
  }
}