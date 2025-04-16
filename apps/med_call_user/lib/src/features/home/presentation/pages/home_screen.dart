import 'package:flutter/material.dart';
import '../../../../core/widgets/app_bottom_nav_bar.dart';
import '../widgets/header_section_widget.dart';
import '../widgets/service_buttons_widget.dart';
import '../widgets/why_us_section_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: AppBottomNavBar(
        currentIndex: 0,
        onTap: (index) {
          if (index == 3) {
            Navigator.pushNamed(context, '/profile');
          }
        },
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const HeaderSection(),
              const SizedBox(height: 24),
              const ServiceButtons(),
              const SizedBox(height: 24),
              const WhyUsSection(),
            ],
          ),
        ),
      ),
    );
  }
}