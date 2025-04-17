import 'package:flutter/material.dart';
import '../theme/colors.dart';

class CustomItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;

  const CustomItem({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    double height =  65;
    double size = 20;
    return SizedBox(
      height: height,
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        onTap: onTap,
        child: Ink(
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [AppColors.languageTileStart, AppColors.white],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              CircleAvatar(
                backgroundColor: AppColors.languageTileCircle,
                child: Icon(Icons.language, color: AppColors.white, size: size),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: AppColors.black,
                  ),
                ),
              ),
              Icon(Icons.chevron_right, color: AppColors.black, size: size),
            ],
          ),
        ),
      ),
    );
  }
}