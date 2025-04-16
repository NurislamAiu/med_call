import 'package:flutter/material.dart';

class WhyUsSection extends StatelessWidget {
  const WhyUsSection();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Почему выбирают нас:',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),
          _WhyItem(icon: Icons.verified, text: 'Квалифицированные специалисты'),
          _WhyItem(icon: Icons.shield, text: 'Стерильность и безопасность'),
          _WhyItem(icon: Icons.access_time, text: 'Доступность 24/7'),
          _WhyItem(icon: Icons.delivery_dining, text: 'Быстрая доставка медикаментов'),
        ],
      ),
    );
  }
}

class _WhyItem extends StatelessWidget {
  final IconData icon;
  final String text;

  const _WhyItem({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        children: [
          Icon(icon, color: Colors.teal),
          const SizedBox(width: 12),
          Expanded(child: Text(text, style: const TextStyle(fontSize: 14))),
        ],
      ),
    );
  }
}