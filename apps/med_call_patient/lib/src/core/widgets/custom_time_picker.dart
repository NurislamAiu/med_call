import 'package:flutter/material.dart';

import '../theme/colors.dart';

Future<TimeOfDay?> showCustomTimePicker({
  required BuildContext context,
  TimeOfDay? initialTime,
}) {
  return showTimePicker(
    context: context,
    initialTime: initialTime ?? TimeOfDay.now(),
    builder: (context, child) {
      return Theme(
        data: Theme.of(context).copyWith(
          timePickerTheme: const TimePickerThemeData(
            backgroundColor: Color(0xFFF4F8FF),
            hourMinuteShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
            dayPeriodShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
            dialHandColor: AppColors.primaryTurquoise,
            dialBackgroundColor: AppColors.languageTileStart,
            hourMinuteTextColor: Colors.black,
            entryModeIconColor: AppColors.primaryTurquoise,
          ),
          colorScheme: const ColorScheme.light(
            primary: AppColors.primaryTurquoise,
            onPrimary: Colors.white,
            onSurface: Colors.black,
          ),
          textButtonTheme: TextButtonThemeData(
            style: TextButton.styleFrom(
              foregroundColor: AppColors.primaryTurquoise,
            ),
          ),
        ),
        child: child!,
      );
    },
  );
}