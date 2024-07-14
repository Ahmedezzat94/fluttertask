part of 'home_page_cubit.dart';

@immutable
sealed class HomePageState {}

final class HomePageInitial extends HomePageState {}
class IntroIncrement extends HomePageState{}
class LanguageIsArabic extends HomePageState{}
class LanguageIsEnglish extends HomePageState{}

