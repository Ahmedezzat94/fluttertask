import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_task/generated/locale_keys.g.dart';
import 'package:project_task/view/blocs/home_cubit/home_page_cubit.dart';
import 'package:sizer/sizer.dart';
import 'dart:ui' as ui;

class HomePageHead extends StatefulWidget {
   const HomePageHead({super.key});

  @override
  State<HomePageHead> createState() => _HomePageHeadState();
}

class _HomePageHeadState extends State<HomePageHead> {
 final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomePageCubit, HomePageState>(
  listener: (context, state) {
    // TODO: implement listener
  },
  builder: (context, state) {
    return Directionality(
      textDirection: context.locale.toString() == 'en'
          ? ui.TextDirection.ltr
          : ui.TextDirection.rtl,
      child: Padding(
        padding: EdgeInsets.only(top: 5.0.h,right:3.w,left:3.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const Icon(Icons.location_on_outlined),
                Text(LocaleKeys.tantArea.toString().tr(),style:TextStyle(
                  fontSize:13.sp,color:Colors.black,fontFamily: "Cairo-VariableFont_slnt,wght"
                ),),
              ],
            ),
           Row(
             children: [
               TextButton(onPressed: () {
                 setState(() {
                   if(context.locale.toString() == 'en'){
                     context.setLocale(const Locale('ar'));
                   }else{
                     context.setLocale(const Locale('en'));
                   }
                 });
               }, child: Text(LocaleKeys.change.toString().tr(),style:TextStyle(
                 fontSize:13.sp,color:Colors.black,fontFamily: 'Cairo-VariableFont_slnt,wght')
               )
               )
             ],
           )
          ],
        ),
      ),
    );
  },
);
  }
}
