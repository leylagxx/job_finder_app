import 'package:flutter/material.dart';

import '../../../../custom_widgets/custom_button.dart';
import '../../../../custom_widgets/custom_textfield.dart';
import '../../../../utils/app_fonts.dart';
import '../../../../utils/app_images.dart';

class ChangePasswordView extends StatelessWidget {
  const ChangePasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          'Құпия сөзді өзгерту',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Form(
              key: formKey,
              autovalidateMode: autovalidateMode,
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Ескі құпия сөзіңізді енгізіңіз',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff111827),
                      fontFamily: AppFonts.kLoginSubHeadlineFont,
                    ),
                  ),
                  SizedBox(height: 10),
                  CustomTextField(
                    hintText: 'Құпия сөз',
                    image: AppImages.kPassword,
                    isPasswordCorrect: true,
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Жаңа құпия сөзді енгізіңіз',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff111827),
                      fontFamily: AppFonts.kLoginSubHeadlineFont,
                    ),
                  ),
                  SizedBox(height: 10),
                  CustomTextField(
                    hintText: 'Құпия сөз',
                    image: AppImages.kPassword,
                    isPasswordCorrect: true,
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Жаңа құпия сөзді растаңыз',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff111827),
                      fontFamily: AppFonts.kLoginSubHeadlineFont,
                    ),
                  ),
                  SizedBox(height: 10),
                  CustomTextField(
                    hintText: 'Құпия сөз',
                    image: AppImages.kPassword,
                    isPasswordCorrect: true,
                  ),
                ],
              ),
            ),
            const Spacer(),
            CustomButton(
              onPressed: () {},
              text: 'Сақтау',
            ),
          ],
        ),
      ),
    );
  }
}
