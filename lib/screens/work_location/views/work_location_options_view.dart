import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:job_finder_app/custom_widgets/custom_success_processes.dart';
import 'package:job_finder_app/screens/login/views/login_view.dart';

import '../../../custom_widgets/custom_button.dart';
import '../../../models/countries_model.dart';
import '../../../utils/app_fonts.dart';
import '../../../utils/app_images.dart';
import '../widgets/custom_selected_country_container.dart';

class WorkLocationOptionsView extends StatefulWidget {
  const WorkLocationOptionsView({super.key});
  static const String id = 'WorkLocationOptionsView';

  @override
  State<WorkLocationOptionsView> createState() =>
      _WorkLocationOptionsViewState();
}

class _WorkLocationOptionsViewState extends State<WorkLocationOptionsView> {
  List<bool> isSelected = [false, false];
  List<String> selectedCountries = [];
  String workPlace = '';
  List<String> work = ['Кеңседе жұмыс', 'Қашықтан жұмыс'];
  List<CountriesModel> country = [
    CountriesModel(
      country: 'Алматы',
    ),
    CountriesModel(
      country: 'Астана',
    ),
    CountriesModel(
      country: 'Шымкент',
    ),
    CountriesModel(
      country: 'Қарағанды',
    ),
    CountriesModel(
      country: 'Ақтау',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const Text(
                'Сіз қай жерде жұмыс істегіңіз келеді?',
                style: TextStyle(
                  fontSize: 24,
                  color: Color(0xff111827),
                  fontFamily: AppFonts.kOnBoardingHeadlineFont,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              const Text(
                'Жұмыс орныңызды көрсетіңіз, біз сізге ыңғайлы ұсыныстар жасай аламыз.',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xff737379),
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 50),
              ToggleButtons(
                borderRadius: BorderRadius.circular(100),
                color: const Color(0xff6B7280),
                selectedColor: Colors.white,
                fillColor: const Color(0xff091A7A),
                isSelected: isSelected,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      work[0],
                      style: const TextStyle(fontSize: 14),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      work[1],
                      style: const TextStyle(fontSize: 14),
                    ),
                  ),
                ],
                onPressed: (int newIndex) {
                  setState(() {
                    for (int index = 0; index < isSelected.length; index++) {
                      if (index == newIndex) {
                        isSelected[index] = true;
                        workPlace = work[index];
                      } else {
                        isSelected[index] = false;
                      }
                    }
                  });
                },
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 16),
                  child: Text(
                    'Жұмыс істеуді қалайтын қаланы таңдаңыз',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff737379),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GridView.builder(
                  shrinkWrap: false,
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 160,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 30,
                    mainAxisExtent: 40,
                  ),
                  itemCount: country.length,
                  itemBuilder: (context, index) {
                    final workplace = country[index].country;
                    final isSelected = selectedCountries.contains(workplace);
                    return CustomSelectedCountryContainer(
                      isClicked: isSelected,
                      onTap: () {
                        setState(() {
                          if (isSelected) {
                            selectedCountries.remove(workplace);
                          } else {
                            selectedCountries.add(workplace);
                            log(selectedCountries.toString());
                          }
                        });
                      },
                      country_name: country[index].country,
                    );
                  },
                ),
              ),
              CustomButton(
                text: 'Келесі',
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return CustomSuccessProcesses(
                        title: 'Есептік жазбаңыз дайын!',
                        subtitle:
                            'Біз сіздің қалауыңызға сәйкес жұмыс ұсыныстарын бейімдедік.',
                        image: AppImages.kSuccessAccount,
                        buttonText: 'Бастау',
                        onPressed: () =>
                            Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return const LoginView();
                          },
                        )),
                      );
                    },
                  ));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}