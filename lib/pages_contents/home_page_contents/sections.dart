import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:project_task/view/blocs/home_cubit/home_page_cubit.dart';
import 'package:sizer/sizer.dart';

import '../../generated/locale_keys.g.dart';

class Sections extends StatelessWidget {
  const Sections({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(17.0),
          child: SizedBox(
              height: 18.h,
              child:ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index){
                    return Container(
                      height: 70.h,
                      width: 40.w,
                      clipBehavior: Clip.hardEdge,
                      decoration: const BoxDecoration(
                        color: Colors.orange,
                          borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                    child:Stack(
                      fit: StackFit.expand,
                      children: [
                      HomePageCubit.get(context).sectionImages[index],
                      Positioned(
                        top: 14.h,
                          left: 10.w,
                          child: Text(HomePageCubit.get(context).sectionNames[index].toString().tr(),style: TextStyle(fontFamily:"Cairo-VariableFont_slnt,wght",fontSize: 15.sp,color: Colors.white),))
                    ],),
                    );

                  },
                  separatorBuilder: (context,index){
                    return SizedBox(
                      width: 4.w,
                    );
                  },
                  itemCount: HomePageCubit.get(context).sectionImages.length)

          ),
        ),
        Padding(
          padding: const EdgeInsets.all(17.0),
          child: Row(children: [Text(LocaleKeys.Re_order.tr(),style: TextStyle(
              fontSize: 15.sp,
              fontWeight: FontWeight.w600,
              fontFamily: 'Cairo-VariableFont_slnt,wght',color: Colors.black),)],),
        )
      ],
    );
  }
}
