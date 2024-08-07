import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:project_task/generated/locale_keys.g.dart';
import 'package:sizer/sizer.dart';
import 'dart:ui' as ui;
import '../../view/widgets/default_form_field.dart';

class SearchAndCartSection extends StatelessWidget {
   SearchAndCartSection({super.key});

 final TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding:  EdgeInsets.only(right: 3.w),
        child: Row(
          children: [
            Row(
              children: [
                DefaultFormField(
                  containerHeight: 6.h,
                  containerWidth: 70.w,
                  containerDecoration: const BoxDecoration(
                    borderRadius:BorderRadius.all(Radius.circular(5)),
                      color: Color(0xfff5f5f5)),
                  controller: searchController,
                  keyboardType: TextInputType.text,
                  prefixIcon:const Icon(Icons.search),
                  maxLines: 2,
                  hintText: LocaleKeys.searchAMealOrRestaurant.tr(),
                  hintStyle: TextStyle(
                      fontSize: 10.sp,fontFamily: "Cairo-VariableFont_slnt,wght"),
                ),
        ]

            ),
            SizedBox(width:4.w,),
            Container(
              alignment: Alignment.center,
              height: 6.h,
              width: 20.w,
              decoration: const BoxDecoration(
                color: Color(0xfff5f5f5),
                borderRadius: BorderRadius.all(Radius.circular(5))
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.shopping_cart_outlined),
                  VerticalDivider(indent:8,endIndent: 8,),
                  Text('300',style:TextStyle(fontFamily: "Cairo-VariableFont_slnt,wght"),)
                ],
              ),
            )
          ],
        ),
      );

  }
}
