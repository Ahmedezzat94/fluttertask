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
  "tantArea": "Tanta area",
  "change": "Change",
  "searchAMealOrRestaurant": "search for a meal or restaurant",
  "sections": "sections",
  "Reorder": "Reorder",
  "mostOrdered": "most ordered",
  "all": "all",
  "handyRestaurant": "hindy restaurant",
  "quickOrder": "quick order",
  "youMayLike": "you may like",
  "restaurants": "restaurants",
  "grocery": "grocery",
  "cookDoor": "cook door",
  "spectra": "spectra",
  "akila": "Akila_meal",
  "pound": "LE",
  "minute": "min"
};
static const Map<String,dynamic> ar = {
  "tantArea": "طنطا منطقة الاستاد",
  "change": "تغير",
  "searchAMealOrRestaurant": "ابحث عن وجبة او مطعم",
  "sections": "الاقسام",
  "Reorder": "اعادة طلب",
  "mostOrdered": "الاكثر طلبا",
  "all": "الكل",
  "handyRestaurant": "مطعم هندي",
  "quickOrder": "طلب سريع",
  "youMayLike": "قد يعجبك",
  "restaurants": "المطاعم",
  "cookDoor": "كوك دور",
  "spectra": "اسبيكترا",
  "grocery": "البقالة",
  "akila": "وجبة الاكيلة",
  "pound": "ج",
  "minute": "دقيقة"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"en": en, "ar": ar};
}
