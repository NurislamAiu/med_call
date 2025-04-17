import 'package:flutter/material.dart';

import '../theme/colors.dart';

class CustomDoctorInfoCard extends StatelessWidget {
  final String name;
  final String status;
  final String specialization;
  final int experience;
  final String phoneNumber;
  final double rating;
  final VoidCallback onPressed;
  final String? avatarUrl;

  const CustomDoctorInfoCard({
    super.key,
    required this.name,
    required this.status,
    required this.specialization,
    required this.experience,
    required this.phoneNumber,

    required this.rating,
    required this.onPressed,
    this.avatarUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFFDDEBFF), Color(0xFFF4F8FF)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 32,
                backgroundColor: Colors.grey[300],
                backgroundImage:
                    avatarUrl != null ? NetworkImage(avatarUrl!) : null,
                child:
                    avatarUrl == null
                        ? const Icon(
                          Icons.person,
                          size: 32,
                          color: Colors.white,
                        )
                        : null,
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Имя: $name',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: AppColors.primaryTurquoise,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'Статус: $status',
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.black87,
                      ),
                    ),
                    const SizedBox(height: 6),
                    _RatingStars(rating: rating),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          _InfoRow(
            icon: Icons.calendar_today,
            label: 'Специализация: $specialization',
          ),
          const SizedBox(height: 8),
          _InfoRow(icon: Icons.access_time, label: 'Опыт: $experience'),
          const SizedBox(height: 8),
          _InfoRow(icon: Icons.phone, label: 'Номер: $phoneNumber'),
          const SizedBox(height: 20),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: onPressed,
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primaryTurquoise,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                padding: const EdgeInsets.symmetric(vertical: 14),
              ),
              child: const Text(
                'Записаться на консультацию',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _InfoRow extends StatelessWidget {
  final IconData icon;
  final String label;

  const _InfoRow({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: AppColors.primaryTurquoise),
        const SizedBox(width: 8),
        Flexible(child: Text(label, style: const TextStyle(fontSize: 15))),
      ],
    );
  }
}

class _RatingStars extends StatelessWidget {
  final double rating;

  const _RatingStars({required this.rating});

  @override
  Widget build(BuildContext context) {
    int fullStars = rating.floor();
    bool halfStar = (rating - fullStars) >= 0.5;
    int emptyStars = 5 - fullStars - (halfStar ? 1 : 0);

    return Row(
      children: [
        for (int i = 0; i < fullStars; i++)
          const Icon(Icons.star, color: Colors.amber, size: 18),
        if (halfStar)
          const Icon(Icons.star_half, color: Colors.amber, size: 18),
        for (int i = 0; i < emptyStars; i++)
          const Icon(Icons.star_border, color: Colors.amber, size: 18),
        const SizedBox(width: 4),
        Text(
          rating.toStringAsFixed(1),
          style: const TextStyle(fontSize: 14, color: Colors.black87),
        ),
      ],
    );
  }
}
