import 'package:flutter/material.dart';
import 'package:job_finder_app/utils/app_fonts.dart';
import 'package:job_finder_app/utils/app_images.dart';

class HelpCenterView extends StatefulWidget {
  const HelpCenterView({super.key});

  @override
  State<HelpCenterView> createState() => _HelpCenterViewState();
}

class _HelpCenterViewState extends State<HelpCenterView> {
  final List<Map<String, dynamic>> _items = [
    {
      'title': 'Қалай тіркелуге болады?',
      'content': 'Тіркелу үшін, басты бетте орналасқан "Тіркелу" батырмасын басып, қажетті ақпаратты енгізіңіз. Содан кейін сізге растама хаты келеді.'
    },
    {
      'title': 'Құпия сөзді ұмыттым, не істеймін?',
      'content': 'Құпия сөзді қалпына келтіру үшін, "Құпия сөзді ұмыттым" сілтемесін басып, өзіңізге тіркелген электронды поштаңызды енгізіңіз.'
    },
    {
      'title': 'Профильді қалай толтыруға болады?',
      'content': 'Профильді толтыру үшін, басты беттегі профиль бөліміне өтіп, өзіңіз туралы қажетті мәліметтерді енгізіңіз.'
    },
    {
      'title': 'Жұмыс іздеуге қалай бастауға болады?',
      'content': 'Жұмыс іздеу үшін, басты беттегі "Жұмыс іздеу" бөліміне өтіп, өзіңізге қызықты жұмыс ұсыныстарын іздеңіз.'
    },
    {
      'title': 'Қалай жұмысқа орналасуға өтініш жіберуге болады?',
      'content': 'Жұмысқа өтініш беру үшін, жұмыс ұсынушы компанияның парақшасында орналасқан "Өтініш беру" батырмасын басыңыз.'
    },
    {
      'title': 'Құжаттарды қалай жүктеуге болады?',
      'content': 'Құжаттарды жүктеу үшін, профиль бөлімінде "Құжаттар" бөлімін тауып, қажетті файлдарды жүктеңіз.'
    },
    {
      'title': 'Қолдау қызметіне қалай хабарласуға болады?',
      'content': 'Қолдау қызметіне хабарласу үшін, басты беттегі "Қолдау қызметі" бөліміне өтіп, байланыс ақпаратымен танысыңыз.'
    },
    {
      'title': 'Қолданбаны жоюға бола ма?',
      'content': 'Қолданбаны жою үшін, құрылғыңыздан қолданбаны алып тастаңыз немесе жүйе баптауларында жою әрекетін жасаңыз.'
    },
    {
      'title': 'Ақшаны қалай қайтарып ала аламын?',
      'content': 'Ақша қайтару үшін, біздің қолдау қызметімізге хабарласып, қайтару туралы өтініш жіберіңіз.'
    },
    {
      'title': 'Қосымша функциялар бар ма?',
      'content': 'Иә, біздің қолданбада қосымша функциялар бар. Олар туралы толығырақ ақпаратты "Қосымша функциялар" бөлімінен біле аласыз.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          'Анықтама орталығы',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.07,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(color: Colors.grey),
                    ),
                  ),
                  Positioned(
                    bottom: 1,
                    top: 1,
                    child: Image.asset(AppImages.kSearch),
                  ),
                  const Positioned(
                    bottom: 15,
                    left: 50,
                    child: Text(
                      'Сізге қалай көмектесе аламыз?',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xff9CA3AF),
                        fontFamily: AppFonts.kLoginSubHeadlineFont,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              SizedBox(
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: _items.length,
                  itemBuilder: (context, index) {
                    final item = _items[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 6.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: const Color(0xffD1D5DB),
                          ),
                        ),
                        child: ExpansionTile(
                          childrenPadding: const EdgeInsets.only(
                            right: 8,
                            left: 16,
                            bottom: 10,
                          ),
                          title: Text(
                            item['title'],
                            style: const TextStyle(
                              fontSize: 16,
                              color: Color(0xff111827),
                              fontFamily: AppFonts.kLoginHeadlineFont,
                            ),
                          ),
                          iconColor: const Color(0xff9CA3AF),
                          collapsedIconColor: const Color(0xff9CA3AF),
                          children: [
                            Text(
                              item['content'],
                              style: const TextStyle(
                                fontSize: 14,
                                color: Color(0xff6B7280),
                                fontFamily: AppFonts.kLoginSubHeadlineFont,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
