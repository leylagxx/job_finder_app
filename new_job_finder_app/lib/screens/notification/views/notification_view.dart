import 'package:flutter/material.dart';
import 'package:job_finder_app/utils/app_images.dart';

import '../../../utils/app_fonts.dart';
import '../widgets/custom_container_notification.dart';
import '../widgets/custom_new_posted_notification.dart';
import '../widgets/custom_old_posted_notification.dart';
import '../widgets/no_notifications.dart';

// ignore: must_be_immutable
class NotificationView extends StatelessWidget {
  NotificationView({super.key, required this.notificationStatus});

  final bool notificationStatus;

  List<String> title = ['Dana', 'Shoope', 'Slack', 'Facebook'];
  List<String> image = [
    AppImages.kDanaLogo,
    AppImages.kShoopeLogo,
    AppImages.kSlackLogo,
    AppImages.kFacebookLogoLarger,
  ];
  List<String> notify = [
    'Электрондық поштаны орнату сәтті аяқталды',
    'JobQazaq қосымшасына қош келдіңіз',
  ];
  List<String> content = [
    'Сіздің электрондық поштаңыз сәтті орнатылды: Жаңа электрондық поштаңыз – rafifdianganz@gmail.com.',
    'Сәлем! JobQazaq-қа тіркелгеніңіз үшін рахмет. Әртүрлі мүмкіндіктерді пайдаланыңыз...',
  ];

  List<String> icon = [
    AppImages.kEmailColored,
    AppImages.kSearchStatusColored,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          'Хабарламалар', // Notification → Хабарламалар
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontFamily: AppFonts.kLoginHeadlineFont,
          ),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: notificationStatus
          ? Column(
              children: [
                const CustomContainerNotification(title: 'Жаңа'),
                SizedBox(
                  child: ListView.separated(
                    itemCount: title.length,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return CustomNewPostedNotification(
                        image: image[index],
                        title: title[index],
                        content: 'Жаңа дизайн жұмыстары жарияланды',
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Divider(
                          thickness: 1,
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 20),
                const CustomContainerNotification(title: 'Кеше'), 
                SizedBox(
                  child: ListView.separated(
                    itemCount: icon.length,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return CustomOldPostedNotification(
                        image: icon[index],
                        title: notify[index],
                        content: content[index],
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Divider(
                          thickness: 1,
                        ),
                      );
                    },
                  ),
                ),
              ],
            )
          : const NoNotifications(),
    );
  }
}
