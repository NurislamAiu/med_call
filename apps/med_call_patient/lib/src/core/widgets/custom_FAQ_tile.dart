import 'package:flutter/material.dart';

import '../theme/colors.dart';

class CustomFAQTile extends StatefulWidget {
  final String question;
  final String answer;

  const CustomFAQTile({
    super.key,
    required this.question,
    required this.answer,
  });

  @override
  State<CustomFAQTile> createState() => _CustomFAQTileState();
}

class _CustomFAQTileState extends State<CustomFAQTile> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [AppColors.languageTileStart, AppColors.white],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              setState(() {
                _isExpanded = !_isExpanded;
              });
            },
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    widget.question,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Icon(
                  _isExpanded
                      ? Icons.expand_less
                      : Icons.expand_more,
                  color: AppColors.primaryTurquoise,
                )
              ],
            ),
          ),
          if (_isExpanded) ...[
            const SizedBox(height: 12),
            Text(
              widget.answer,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.black87,
                height: 1.4,
              ),
            ),
          ],
        ],
      ),
    );
  }
}