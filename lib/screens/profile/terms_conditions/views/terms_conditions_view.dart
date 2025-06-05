import 'package:flutter/material.dart';
import 'package:job_finder_app/utils/app_fonts.dart';

class TermsConditionsView extends StatefulWidget {
  const TermsConditionsView({super.key});

  @override
  State<TermsConditionsView> createState() => _TermsConditionsViewState();
}

class _TermsConditionsViewState extends State<TermsConditionsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          'Қолдану шарттары',
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
            const Text(
              'Жалпы ережелер',
              style: TextStyle(
                color: Color(0xff111827),
                fontSize: 20,
                fontFamily: AppFonts.kLoginHeadlineFont,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10, right: 16),
              child: Text(
                'Бұл қолданбаға кіру және оны пайдалану осы шарттарға сәйкес жүзеге асырылады. '
                'Қолданушы ретінде сіз біздің шарттарымызға келісесіз және оларды сақтауға міндеттісіз.',
                style: TextStyle(
                  color: Color(0xff6B7280),
                  fontSize: 14,
                  fontFamily: AppFonts.kLoginSubHeadlineFont,
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Қолданушының міндеттері',
              style: TextStyle(
                color: Color(0xff111827),
                fontSize: 20,
                fontFamily: AppFonts.kLoginHeadlineFont,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10, right: 16),
              child: Text(
                'Қолданушы ретінде сіз қолданбаны заңды және жауапкершілікпен пайдалану керек. '
                'Кез келген құқық бұзушылықтар үшін қолданушы өзі жауапты болады.',
                style: TextStyle(
                  color: Color(0xff6B7280),
                  fontSize: 14,
                  fontFamily: AppFonts.kLoginSubHeadlineFont,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.all(16),
              color: const Color(0xffF4F4F5),
              child: const Text(
                'Қолданушы қолданбаны зиян келтіру, алаяқтық жасау немесе басқа заңсыз әрекеттер үшін пайдалана алмайды. '
                'Біз кез келген уақытта қолданушының қолжетімділігін шектеуге құқылымыз.',
                style: TextStyle(
                  color: Color(0xff6B7280),
                  fontSize: 14,
                  fontFamily: AppFonts.kLoginSubHeadlineFont,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10, right: 16),
              child: Text(
                'Егер қолданушы осы шарттарды бұзса, біз оны қызметтерді пайдаланудан шектеуге немесе есептік жазбасын '
                'жоюға құқығымыз бар.',
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
    );
  }
}
