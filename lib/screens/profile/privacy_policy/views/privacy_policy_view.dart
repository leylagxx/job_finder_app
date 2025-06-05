import 'package:flutter/material.dart';
import '../../../../utils/app_fonts.dart';

class PrivacyPolicyView extends StatelessWidget {
  const PrivacyPolicyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          'Құпиялылық саясаты',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Сіздің құпиялылығыңыз маңызды',
                style: TextStyle(
                  color: Color(0xff111827),
                  fontSize: 20,
                  fontFamily: AppFonts.kLoginHeadlineFont,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10, right: 16),
                child: Text(
                  'Біз сіздің жеке деректеріңізді қорғауға үлкен мән береміз. Құпиялылық саясаты жеке мәліметтеріңізді қалай жинайтынымыз, пайдаланатынымыз және сақтайтынымызды түсіндіреді.',
                  style: TextStyle(
                    color: Color(0xff6B7280),
                    fontSize: 14,
                    fontFamily: AppFonts.kLoginSubHeadlineFont,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10, right: 16),
                child: Text(
                  'Біз тек қажетті ақпаратты жинаймыз және оны тек сіздің келісіміңізбен пайдаланамыз. Бұл саясат сіздің құпиялығыңызды сақтауды қамтамасыз етеді.',
                  style: TextStyle(
                    color: Color(0xff6B7280),
                    fontSize: 14,
                    fontFamily: AppFonts.kLoginSubHeadlineFont,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Деректерді бақылаушылар және келісімшарт серіктестері',
                style: TextStyle(
                  color: Color(0xff111827),
                  fontSize: 20,
                  fontFamily: AppFonts.kLoginHeadlineFont,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10, right: 16),
                child: Text(
                  'Біздің компаниямыз жеке деректерді жинайтын және өңдейтін деректер бақылаушысы болып табылады. Біз бұл деректерді тек заңды мақсаттарда пайдалану үшін қолданамыз.',
                  style: TextStyle(
                    color: Color(0xff6B7280),
                    fontSize: 14,
                    fontFamily: AppFonts.kLoginSubHeadlineFont,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10, right: 16),
                child: Text(
                  'Келісімшарт серіктестеріміз сіздердің деректеріңізді тек белгілі бір мақсаттар үшін пайдалану мүмкіндігіне ие. Бұл серіктестер барлық қажетті қауіпсіздік шараларын қамтамасыз етеді.',
                  style: TextStyle(
                    color: Color(0xff6B7280),
                    fontSize: 14,
                    fontFamily: AppFonts.kLoginSubHeadlineFont,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Сіздің құқықтарыңыз',
                style: TextStyle(
                  color: Color(0xff111827),
                  fontSize: 20,
                  fontFamily: AppFonts.kLoginHeadlineFont,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10, right: 16),
                child: Text(
                  'Сізде өз деректеріңізге қол жеткізу, оларды түзету немесе жою құқығы бар. Егер сіз өз деректеріңізді өзгерту немесе өшіру туралы сұрау салсаңыз, біз сізге көмек көрсетуге дайынбыз.',
                  style: TextStyle(
                    color: Color(0xff6B7280),
                    fontSize: 14,
                    fontFamily: AppFonts.kLoginSubHeadlineFont,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10, right: 16),
                child: Text(
                  'Сіз сондай-ақ деректеріңізді өңдеуге қарсылық білдіре аласыз. Егер сіз осы құқықтарыңыз бойынша сұрақтар туындаса, біздің қолдау қызметімізге хабарласыңыз.',
                  style: TextStyle(
                    color: Color(0xff6B7280),
                    fontSize: 14,
                    fontFamily: AppFonts.kLoginSubHeadlineFont,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Деректердің қауіпсіздігі',
                style: TextStyle(
                  color: Color(0xff111827),
                  fontSize: 20,
                  fontFamily: AppFonts.kLoginHeadlineFont,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10, right: 16),
                child: Text(
                  'Біз сіздің деректеріңіздің қауіпсіздігін қамтамасыз ету үшін барлық қажетті шараларды қолданамыз. Бұл шаралар деректерді қорғауды және рұқсатсыз қолжетімділікті болдырмауды қамтиды.',
                  style: TextStyle(
                    color: Color(0xff6B7280),
                    fontSize: 14,
                    fontFamily: AppFonts.kLoginSubHeadlineFont,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10, right: 16),
                child: Text(
                  'Сіздің деректеріңізді қорғау біздің басты міндетіміз болып табылады, сондықтан біз үнемі қауіпсіздік шараларын жаңартып отырамыз.',
                  style: TextStyle(
                    color: Color(0xff6B7280),
                    fontSize: 14,
                    fontFamily: AppFonts.kLoginSubHeadlineFont,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
