import 'package:flutter/material.dart';
import 'package:portfolio_app/utils/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding * 2),
      color: backgroundColor,
      child: Column(
        children: [
          Text(
            contactTitle,
            style: Theme.of(context).textTheme.displayLarge,
          ),
          const SizedBox(height: defaultPadding * 2),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'İletişime Geçin',
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                    const SizedBox(height: defaultPadding),
                    Text(
                      'Projeleriniz için benimle iletişime geçebilirsiniz.',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    const SizedBox(height: defaultPadding * 2),
                    _buildContactInfo(
                      Icons.email_outlined,
                      'Email',
                      email,
                    ),
                    const SizedBox(height: defaultPadding),
                    _buildContactInfo(
                      Icons.link,
                      'LinkedIn',
                      linkedinUrl,
                    ),
                    const SizedBox(height: defaultPadding),
                    _buildContactInfo(
                      Icons.code,
                      'GitHub',
                      githubUrl,
                    ),
                  ],
                ),
              ),
              const SizedBox(width: defaultPadding * 2),
              Expanded(
                child: _buildContactForm(),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildContactInfo(IconData icon, String title, String content) {
    return InkWell(
      onTap: () {
        if (title == 'Email') {
          launch('mailto:$content');
        } else if (title == 'LinkedIn') {
          launch(content);
        } else if (title == 'GitHub') {
          launch(content);
        }
      },
      child: Row(
        children: [
          Icon(icon, color: primaryColor),
          const SizedBox(width: defaultPadding),
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
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildContactForm() {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Mesaj Gönderin',
            style: TextStyle(
              color: textColor,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: defaultPadding),
          TextField(
            decoration: InputDecoration(
              hintText: 'İsim',
              filled: true,
              fillColor: backgroundColor,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide.none,
              ),
            ),
          ),
          const SizedBox(height: defaultPadding),
          TextField(
            decoration: InputDecoration(
              hintText: 'Email',
              filled: true,
              fillColor: backgroundColor,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide.none,
              ),
            ),
          ),
          const SizedBox(height: defaultPadding),
          TextField(
            maxLines: 5,
            decoration: InputDecoration(
              hintText: 'Mesajınız',
              filled: true,
              fillColor: backgroundColor,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide.none,
              ),
            ),
          ),
          const SizedBox(height: defaultPadding),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: primaryColor,
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text(
                'Gönder',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
