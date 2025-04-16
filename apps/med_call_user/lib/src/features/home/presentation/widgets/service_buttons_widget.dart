import 'package:flutter/material.dart';

class ServiceButtons extends StatelessWidget {
  const ServiceButtons();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        _IconLabel(icon: Icons.medical_services, label: 'Услуги'),
        _IconLabel(icon: Icons.video_call, label: 'Консультация'),
        _IconLabel(icon: Icons.home_filled, label: 'На дом'),
      ],
    );
  }
}

class _IconLabel extends StatelessWidget {
  final IconData icon;
  final String label;

  const _IconLabel({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: const Color(0xFFD6EEF0),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Icon(icon, color: Colors.teal, size: 28),
        ),
        const SizedBox(height: 8),
        Text(
          label,
          style: const TextStyle(
            fontSize: 14,
            color: Color(0xFF3A8D93),
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}