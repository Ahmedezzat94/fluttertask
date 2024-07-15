import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:project_task/generated/locale_keys.g.dart';
import 'package:sizer/sizer.dart';
import 'dart:ui'as ui;
import '../../view/blocs/home_cubit/home_page_cubit.dart';

class ReOrder extends StatelessWidget {
  const ReOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(17.0),
            child: SizedBox(
                height: 16.h,
                child:ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context,index){
                      return Container(
                        width: 60.w,
                        clipBehavior: Clip.hardEdge,
                        decoration:  BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color:Colors.grey.shade200),
                            borderRadius: const BorderRadius.all(Radius.circular(10))
                        ),
                         child: Stack(
                           children: [
                             Positioned(
                               right:2.w,
                               top: 1.h,
                               child: Container(
                                 height:5.h,
                                 clipBehavior: Clip.hardEdge,
                                 decoration: const BoxDecoration(
                                   borderRadius: BorderRadius.all(Radius.circular(13))
                                 ),
                                 child:HomePageCubit.get(context).reOrderedImages[index] ,
                               ),
                             ),
                             Positioned(
                               right: 16.w,
                                 top: 3.h,
                                 child: Text(HomePageCubit.get(context).reOrdered[index].toString().tr(),style: TextStyle(fontSize:10.sp),)),
                             Positioned(
                                 right: 16.w,
                                 top: 6.h,
                                 child: Text(HomePageCubit.get(context).reOrdered[index].toString().tr(),style: TextStyle(fontSize:10.sp,color: Colors.grey.shade400),)),
                             Positioned(
                                 right: 40.w,
                                 top: 11.h,
                                 child: Row(
                                   children: [
                                     const Icon(Icons.refresh,color: Color(0xff007a7b),),
                                     Text(LocaleKeys.Reorder.tr(),style: TextStyle(fontSize:10.sp,color: const Color(0xff007a7b)),),

                                   ],
                                 ))

                           ],
                         ),
                      );

                    },
                    separatorBuilder: (context,index){
                      return SizedBox(
                        width: 4.w,
                      );
                    },
                    itemCount: HomePageCubit.get(context).reOrdered.length)

            ),
          ),
          Padding(
            padding: const EdgeInsets.all(17.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Text(LocaleKeys.mostOrdered.tr(),style: TextStyle(
                fontSize: 15.sp,
                fontWeight: FontWeight.w600,
                fontFamily: 'Cairo-VariableFont_slnt,wght',color: Colors.black),),
              Text(LocaleKeys.all.tr(),style: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Cairo-VariableFont_slnt,wght',color: const Color(0xff007a7b)),)

            ],),
          )

        ],
      );

  }
}
