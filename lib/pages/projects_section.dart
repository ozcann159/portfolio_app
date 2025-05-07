import 'package:flutter/material.dart';
import 'package:portfolio_app/utils/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding * 2),
      color: cardColor,
      child: Column(
        children: [
          Text(
            projectsTitle,
            style: Theme.of(context).textTheme.displayLarge,
          ),
          const SizedBox(height: defaultPadding * 2),
          Wrap(
            spacing: defaultPadding,
            runSpacing: defaultPadding,
            children: [
              _buildProjectCard(
                context,
                'Tobeto App',
                'Eğitim platformu mobil uygulaması.',
                ['Flutter', 'REST API', 'Provider'],
                'assets/images/7.png',
                'https://github.com/ozcann159/tobeto_app',
              ),
              _buildProjectCard(
                context,
                'Taskly',
                'Görev yönetimi ve planlama uygulaması.',
                ['Flutter', 'Hive', 'Local Storage'],
                'assets/images/2.png',
                'https://github.com/ozcann159/Taskly',
              ),
              _buildProjectCard(
                context,
                'Hatıra Defteri',
                'Günlük tutma ve anılarınızı kaydetme uygulaması.',
                ['Flutter', 'Firebase', 'State Management'],
                'assets/images/4.png',
                'https://github.com/ozcann159/memory_app',
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildProjectCard(
    BuildContext context,
    String title,
    String description,
    List<String> technologies,
    String imagePath,
    String githubUrl,
  ) {
    return Container(
      width: 300,
      padding: const EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: cardColor,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    color: cardColor,
                    child: const Center(
                      child: Icon(
                        Icons.image_not_supported,
                        color: secondaryTextColor,
                        size: 50,
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          // ... existing code ...
        ],
      ),
    );
  }
}
