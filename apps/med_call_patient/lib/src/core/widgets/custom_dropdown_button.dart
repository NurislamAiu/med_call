import 'package:flutter/material.dart';

import '../theme/colors.dart';

class CustomDropdownCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String? selectedValue;
  final List<String> options;
  final ValueChanged<String?> onChanged;

  const CustomDropdownCard({
    super.key,
    required this.icon,
    required this.title,
    required this.options,
    required this.selectedValue,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        gradient:  LinearGradient(
          colors: [AppColors.languageTileStart, Colors.white],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 6,
            offset: Offset(2, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(icon, size: 28, color: AppColors.primaryTurquoise),
          const SizedBox(height: 8),
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Container(
            height: 48,
            padding: const EdgeInsets.symmetric(horizontal: 12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.grey.shade300),
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                dropdownColor: AppColors.white,
                borderRadius: BorderRadius.circular(15),
                value: selectedValue,
                hint: const Text('Выберите услугу', style: TextStyle(fontSize: 14),),
                isExpanded: true,
                icon: const Icon(Icons.arrow_drop_down),
                onChanged: onChanged,
                items: options
                    .map((e) => DropdownMenuItem(value: e, child: Text(e, style: TextStyle(fontSize: 14),)))
                    .toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}