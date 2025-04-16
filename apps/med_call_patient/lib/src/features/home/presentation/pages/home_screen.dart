import 'package:flutter/material.dart';
import 'package:med_call_patient/src/core/widgets/app_bottom_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Color primaryColor = const Color(0xFF7BCDD1); // Голубой фон
    final TextStyle titleStyle = Theme.of(context).textTheme.headlineMedium!.copyWith(
      fontWeight: FontWeight.bold,
      color: Colors.white,
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Верхний блок с фоном
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(32),
                  bottomRight: Radius.circular(32),
                ),
                boxShadow: [
                  BoxShadow(
                    color: primaryColor.withOpacity(0.3),
                    blurRadius: 20,
                    offset: const Offset(0, 10),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Ваше здоровье в\nнадежных руках!", style: titleStyle),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: primaryColor,
                      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32),
                      ),
                      elevation: 4,
                    ),
                    child: const Text("Оставить заявку"),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 32),

            // Блок с кнопками "Услуги" и "Консультация"
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _FeatureButton(icon: Icons.medical_services, label: "Услуги"),
                  _FeatureButton(icon: Icons.home_filled, label: "Консультация"),
                ],
              ),
            ),

            const SizedBox(height: 32),

            // Почему выбирают нас
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Почему выбирают нас:",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 16),
                  _AdvantageItem(icon: Icons.verified, text: "Квалифицированные специалисты"),
                  _AdvantageItem(icon: Icons.shield, text: "Стерильность и безопасность"),
                  _AdvantageItem(icon: Icons.access_time, text: "Доступность 24/7"),
                  _AdvantageItem(icon: Icons.delivery_dining, text: "Быстрая доставка медикаментов"),
                ],
              ),
            ),
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}

class _FeatureButton extends StatelessWidget {
  final IconData icon;
  final String label;

  const _FeatureButton({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: const Color(0xFFE0F7F8),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Icon(icon, color: const Color(0xFF7BCDD1), size: 32),
        ),
        const SizedBox(height: 8),
        Text(label, style: const TextStyle(fontWeight: FontWeight.w600, color: Color(0xFF4EA1A6))),
      ],
    );
  }
}

class _AdvantageItem extends StatelessWidget {
  final IconData icon;
  final String text;

  const _AdvantageItem({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Icon(icon, color: const Color(0xFF7BCDD1)),
          const SizedBox(width: 12),
          Expanded(child: Text(text, style: const TextStyle(fontSize: 16))),
        ],
      ),
    );
  }
}