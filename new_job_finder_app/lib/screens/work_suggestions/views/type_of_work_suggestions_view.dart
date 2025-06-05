import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:job_finder_app/utils/app_fonts.dart';

import '../../../models/work_types_model.dart';
import '../../../utils/app_images.dart';
import '../../work_location/views/work_location_options_view.dart';
import '../widgets/custom_container_types.dart';

class TypeOfWorkSuggestionsView extends StatefulWidget {
  const TypeOfWorkSuggestionsView({super.key});
  static const String id = 'TypeOfWorkSuggestionsView';

  @override
  State<TypeOfWorkSuggestionsView> createState() =>
      _TypeOfWorkSuggestionsViewState();
}

class _TypeOfWorkSuggestionsViewState extends State<TypeOfWorkSuggestionsView> {
  List<String> selectedWorkTypes = [];

  List<WorkTypes> types = [
    WorkTypes(
      image: AppImages.kUiUxWork,
      text: 'UI/UX Дизайнер',
    ),
    WorkTypes(
      image: AppImages.kUdWork,
      text: 'Иллюстратор Дизайнер',
    ),
    WorkTypes(
      image: AppImages.kDeveloper,
      text: 'Әзірлеуші',
    ),
    WorkTypes(
      image: AppImages.kManagement,
      text: 'Менеджмент',
    ),
    WorkTypes(
      image: AppImages.kIT,
      text: 'Ақпараттық технологиялар',
    ),
    WorkTypes(
      image: AppImages.kRA,
      text: 'Зерттеу және аналитика',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16, top: 16),
          child: Column(
            children: [
              const Text(
                'Қандай жұмыс түрі сізді қызықтырады?',
                style: TextStyle(
                  fontSize: 24,
                  color: Color(0xff111827),
                  fontFamily: AppFonts.kOnBoardingHeadlineFont,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Біз сіздің қажеттіліктеріңізге сәйкес қолданбаны баптай алу үшін қызығушылықтарыңызды бөлісіңіз.',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xff737379),
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: GridView.builder(
                  shrinkWrap: false,
                  itemCount: types.length,
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 170,
                      mainAxisExtent: 145,
                      childAspectRatio: 2.24 / 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20),
                  itemBuilder: (context, index) {
                    final workType = types[index].text;
                    final isSelected = selectedWorkTypes.contains(workType);
                    return CustomContainerTypes(
                      isClicked: isSelected,
                      onTap: () {
                        setState(() {
                          if (isSelected) {
                            selectedWorkTypes.remove(workType);
                          } else {
                            selectedWorkTypes.add(workType);
                            log(selectedWorkTypes.toString());
                          }
                        });
                      },
                      icon: types[index].image,
                      work_type: types[index].text,
                    );
                  },
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 24.0),
                height: MediaQuery.of(context).size.height * 0.13,
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff3366FF),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(35)),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, WorkLocationOptionsView.id);
                  },
                  child: const Text(
                    "Келесі",
                    style: TextStyle(color: Colors.white, fontSize: 16),
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
