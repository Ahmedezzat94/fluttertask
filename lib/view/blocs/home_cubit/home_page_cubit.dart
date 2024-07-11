import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_task/generated/locale_keys.g.dart';

part 'home_page_state.dart';

class HomePageCubit extends Cubit<HomePageState> {
  HomePageCubit() : super(HomePageInitial());
  static HomePageCubit get(context) => BlocProvider.of(context);
  int currentIndex = 0;
  PageController sliderController = PageController();

  List sectionImages = [
    Image.asset('assets/images/delivery-man-box.webp',fit:BoxFit.fill,),
    Image.asset('assets/images/food_plate.jpg',fit:BoxFit.cover,),
    Image.asset('assets/images/grocery.jpeg',fit:BoxFit.cover,)
  ];

  List sectionNames = [
   LocaleKeys.quickOrder,
    LocaleKeys.restaurants,
    LocaleKeys.grocery
  ];
  
  List reOrdered = [
    LocaleKeys.handyRestaurant,
    LocaleKeys.quickOrder
  ];


  List reOrderedImages = [
   Image.asset('assets/images/hend_logo.webp'),
    Image.asset('assets/images/fast.jpeg')
  ];

  List mostOrdered = [
    Image.asset('assets/images/cook_door_pic.png',fit:BoxFit.cover,),
    Image.asset('assets/images/spectra_pic.jpeg',fit:BoxFit.cover,)
  ];

  List mostOrderedNames = [
    LocaleKeys.cookDoor,
    LocaleKeys.spectra
  ];
  onWidgetChange(index){
    currentIndex = index;
    emit(IntroIncrement());
  }
}
