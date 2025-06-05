import 'package:flutter/material.dart';
import 'package:job_finder_app/utils/app_images.dart';

import '../../../utils/app_fonts.dart';

class NoNotifications extends StatelessWidget {
  const NoNotifications({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(AppImages.NotificationIlustration),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Жаңа хабарламалар жоқ',
            style: TextStyle(
              fontSize: 24,
              fontFamily: AppFonts.kRegisterHeadlineFont,
              color: Color(0xff111827),
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 16,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Есебіңізде өзгерістер болса, сізге хабарлама келеді',
              style: TextStyle(
                fontSize: 14,
                color: Color(0xff6B7280),
                fontFamily: AppFonts.kRegisterHintFont,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
