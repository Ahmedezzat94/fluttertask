// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes, avoid_renaming_method_parameters

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>?> load(String path, Locale locale) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> en = {
  "Tanta_area": "Tanta area",
  "Change": "Change",
  "search_for_a_meal_or_resturant": "search for a meal or resturant",
  "sections": "sections",
  "Re_order": "Re order",
  "most_ordered": "most ordered",
  "all": "all",
  "hendi_restaurant": "hendi restaurant",
  "quick_order": "quick order",
  "you_may_like": "you may like",
  "restaurants": "restaurants",
  "grocery": "grocery"
};
static const Map<String,dynamic> ar = {
  "Tanta_area": "طنطا منطقة الاستاد",
  "Change": "تغير",
  "search_for_a_meal_or_resturant": "ابحث عن وجبة او مطعم",
  "sections": "الاقسام",
  "Re_order": "اعادة طلب",
  "most_ordered": "الاكثر طلبا",
  "all": "الكل",
  "hendi_restaurant": "مطعم هندي",
  "quick_order": "طلب سريع",
  "you_may_like": "قد يعجبك",
  "restaurants": "المطاعم",
  "grocery": "البقالة"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"en": en, "ar": ar};
}
