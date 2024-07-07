import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_task/generated/locale_keys.g.dart';
import 'package:sizer/sizer.dart';
import 'dart:ui' as ui;

class HomePageHead extends StatelessWidget {
   HomePageHead({super.key});

 final TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: context.locale.toString() == 'ar'
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
                Text(LocaleKeys.Tanta_area.toString().tr(),style:TextStyle(
                  fontSize:13.sp,color:Colors.black
                ),),
              ],
            ),
           Row(
             children: [
               TextButton(onPressed: () {
                 if(context.locale.toString() == 'en'){
                   context.setLocale(const Locale('ar'));
                 }else{
                   context.setLocale(const Locale('en'));
                 }
               }, child: Text(LocaleKeys.Change.toString().tr(),style:TextStyle(
                 fontSize:13.sp,color:Colors.black)
               )
               )
             ],
           )
          ],
        ),
      ),
    );
  }
}
