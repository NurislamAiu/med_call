import 'package:flutter/material.dart';

class AppBottomNavBar extends StatelessWidget {
  final int currentIndex;
  final void Function(int) onTap;

  const AppBottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      selectedItemColor: Colors.teal,
      unselectedItemColor: Colors.black87,
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Главная'),
        BottomNavigationBarItem(icon: Icon(Icons.access_time), label: 'Заявки'),
        BottomNavigationBarItem(icon: Icon(Icons.notifications), label: 'Уведомление'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Профиль'),
      ],
    );
  }
}