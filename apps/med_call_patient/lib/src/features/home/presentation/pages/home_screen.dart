import 'package:flutter/material.dart';
import 'package:med_call_patient/src/core/widgets/custom_button.dart';
import 'package:med_call_patient/src/core/widgets/custom_nav_bar.dart';
import 'package:med_call_patient/src/core/widgets/custom_profile_tile.dart';
import '../../../../core/widgets/custom_FAQ_tile.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import '../../../../core/widgets/custom_date_picker.dart';
import '../../../../core/widgets/custom_doctor_info_card.dart';
import '../../../../core/widgets/custom_dropdown_button.dart';
import '../../../../core/widgets/custom_item.dart';
import '../../../../core/widgets/custom_notification_card.dart';
import '../../../../core/widgets/custom_picker_card.dart';
import '../../../../core/widgets/custom_service_tile.dart';
import '../../../../core/widgets/custom_time_picker.dart';
import '../../../../core/widgets/сustom_outlined_text_field.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  DateTime? selectedDate;
  TimeOfDay? selectedTime;
  Future<void> pickDate() async {
    final picked = await showCustomDatePicker(
      context: context,
      initialDate: selectedDate,
    );
    if (picked != null) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  Future<void> pickTime() async {
    final picked = await showCustomTimePicker(
      context: context,
      initialTime: selectedTime,
    );
    if (picked != null) {
      setState(() {
        selectedTime = picked;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    final ageController = TextEditingController();
    return Stack(
      children: [
        Scaffold(
          backgroundColor: Colors.white,
          appBar: CustomAppBar(
            title: 'Создайте заявку!',
            subtitle: 'Выберите услугу и\nукажите дату и время',
            onClose: () {
              Navigator.pop(context);
            },
          ),
          body: SingleChildScrollView(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                CustomItem(icon: Icons.language, title: 'Язык', onTap: () {}),
                SizedBox(height: 20),
                CustomButton(text: 'text', onPressed: () {}),
                SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: CustomPickerCard(
                        icon: Icons.calendar_today,
                        title: 'Выберите дату',
                        value: '15.04.2025',
                        onTap: () {},
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: CustomPickerCard(
                        icon: Icons.access_time,
                        title: 'Выберите время',
                        value: '14:30',
                        onTap: () {},
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                CustomDropdownCard(
                  icon: Icons.medical_information_outlined,
                  title: 'Услуги',
                  options: ['Укол', 'Капельница', 'Массаж'],
                  selectedValue: 'Укол',
                  onChanged: (String? value) {},
                ),
                SizedBox(height: 20),
                CustomNotificationCard(
                  title: 'Напоминание о записи',
                  message: 'У вас запись на услугу “Перевязки” сегодня в 03:46',
                  time: '03:46',
                  date: '16.12.2024 02:25',
                ),SizedBox(height: 20),

                CustomProfileTile(
                  icon: Icons.calendar_month_outlined,
                  title: 'Возраст',
                  value: '18',
                ),
                SizedBox(height: 20),
                CustomDoctorInfoCard(
                  name: 'Бакмухамед',
                  status: 'Свободен',
                  specialization: 'Лор',
                  experience: 5,
                  rating: 4.5,
                  phoneNumber: '+7 705 534 95 34',
                  onPressed: () {
                  },
                  avatarUrl: null,
                ),
                SizedBox(height: 20),
                CustomServiceTile(
                  icon: Icons.calendar_month_outlined,
                  title: 'Внутримышечные инъекции',
                  price: '3000',
                ),
                SizedBox(height: 20),
                CustomOutlinedTextField(
                  label: 'Возраст',
                  hint: '18',
                  icon: Icons.calendar_month_outlined,
                  controller: ageController,
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 20),
                CustomFAQTile(
                  question: 'Как работает приложение MedCall?',
                  answer:
                  'Приложение MedCall позволяет вызвать врача или медицинскую сестру (брата) на дом для представления медицинских услуг. Вы выбираете услугу, указываете адрес и время, а наш специалист приедет к вам.',
                ),
                SizedBox(height: 20),
                ElevatedButton(
                 onPressed: pickDate, child: Text('Дата'),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: pickTime, child: Text('Время'),
                ),
                SizedBox(height: 100),
              ],
            ),
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: CustomNavBar(
            currentIndex: 0,
            onTap: (int i) {},
          ),
        ),
      ],
    );
  }
}
