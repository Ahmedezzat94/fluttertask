import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'home_page_state.dart';

class HomePageCubit extends Cubit<HomePageState> {
  HomePageCubit() : super(HomePageInitial());
  static HomePageCubit get(context) => BlocProvider.of(context);
  int currentIndex = 0;
  PageController sliderController = PageController();

  onWidgetChange(index){
    currentIndex = index;
    emit(IntroIncrement());
  }
}
