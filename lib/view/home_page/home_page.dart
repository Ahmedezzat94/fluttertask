import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:project_task/pages_contents/home_page_contents/search_and_cart_section.dart';
import 'package:project_task/pages_contents/home_page_contents/sections.dart';
import 'dart:ui' as ui;

import '../../pages_contents/home_page_contents/home_page_head.dart';
import '../../pages_contents/home_page_contents/most_ordered.dart';
import '../../pages_contents/home_page_contents/reorder.dart';
import '../../pages_contents/home_page_contents/slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key,});

  @override
  State<HomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: context.locale.toString() == "ar"
          ? ui.TextDirection.ltr
          : ui.TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.white,
       body:Column(
         children: [
           HomePageHead(),
           SearchAndCartSection(),
           SliderWidget(),

         ],
       )
      ),
    );
  }
}