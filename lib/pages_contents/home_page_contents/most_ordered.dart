import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../generated/locale_keys.g.dart';
import '../../view/blocs/home_cubit/home_page_cubit.dart';

class MostOrdered extends StatelessWidget {
  const MostOrdered({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(17.0),
          child: SizedBox(
              height: 25.h,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                        width: 60.w,
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.grey.shade200),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10))),
                        child: Column(
                          children: [
                            Container(
                              height: 15.h,
                              width: 60.w,
                              clipBehavior: Clip.hardEdge,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(color: Colors.grey.shade200),
                                  borderRadius:
                                      const BorderRadius.all(Radius.circular(10))),
                              child: HomePageCubit.get(context).mostOrdered[index],
                            ),
                            Row(
                              children: [
                                Text(
                                  HomePageCubit.get(context)
                                      .mostOrderedNames[index]
                                      .toString()
                                      .tr(),
                                  style: TextStyle(
                                      fontSize: 15.sp, color: Colors.black,fontFamily: "Cairo-VariableFont_slnt,wght"),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  HomePageCubit.get(context)
                                      .mostOrderedNames[index]
                                      .toString()
                                      .tr(),
                                  style: TextStyle(
                                      fontSize: 10.sp, color: Colors.grey.shade400,fontFamily: "Cairo-VariableFont_slnt,wght"),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 1.h,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.timer,
                                  color: Colors.grey.shade400,
                                ),
                                Text(
                                  "45${LocaleKeys.Minute.tr()}",
                                  style: TextStyle(color: Colors.grey.shade400,fontFamily: "Cairo-VariableFont_slnt,wght"),
                                ),
                                SizedBox(
                                  width: 1.h,
                                ),
                                Icon(
                                  Icons.circle,
                                  color: Colors.grey.shade500,
                                  size: 6,
                                ),
                                SizedBox(
                                  width: 1.h,
                                ),
                                Icon(
                                  Icons.motorcycle,
                                  color: Colors.grey.shade300,
                                ),
                                Text('15${LocaleKeys.LE.tr()}',
                                    style: TextStyle(color: Colors.grey.shade400,fontFamily: "Cairo-VariableFont_slnt,wght")),
                                SizedBox(
                                  width: 1.h,
                                ),
                                Icon(
                                  Icons.circle,
                                  color: Colors.grey.shade500,
                                  size: 6,
                                ),
                                Icon(
                                  Icons.star_border_outlined,
                                  color: Colors.grey.shade300,
                                ),
                                Text('4.5',
                                    style: TextStyle(color: Colors.grey.shade400,fontFamily:'Cairo-VariableFont_slnt,wght'))
                              ],
                            )
                          ],
                        ));
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      width: 4.w,
                    );
                  },
                  itemCount: HomePageCubit.get(context).mostOrdered.length)),
        ),
        Padding(
          padding: const EdgeInsets.all(17.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(LocaleKeys.you_may_like.tr(),style: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Cairo-VariableFont_slnt,wght',color: Colors.black),),
            ],),
        )
      ],
    );
  }
}
