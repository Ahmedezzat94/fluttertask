import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:project_task/generated/locale_keys.g.dart';
import 'package:sizer/sizer.dart';


class YouMayLike extends StatelessWidget {
  const YouMayLike({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(17.0),
      child: SizedBox(
          height: 30.h,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Stack(
                  children:[
                    Container(
                        width: 55.w,
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
                              child: Image.asset('assets/images/youmaylike.jpeg',fit:BoxFit.cover,),
                            ),
                            Row(
                              children: [
                                Text(
                                  LocaleKeys.akilaMeal.tr(),
                                  style: TextStyle(
                                      fontSize: 15.sp, color: Colors.black,fontFamily: "Cairo-VariableFont_slnt,wght"),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  '30${LocaleKeys.pound.tr()}',
                                  style: TextStyle(
                                      fontSize: 10.sp, color: Colors.orangeAccent.shade400,fontFamily:'Cairo-VariableFont_slnt,wght'),
                                ),
                                SizedBox(width:3.w,),
                                Text(
                                  '60${LocaleKeys.pound.tr()}',
                                  style: TextStyle(
                                      fontSize: 10.sp, color: Colors.grey.shade400,fontFamily:'Cairo-VariableFont_slnt,wght'),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 1.h,
                            ),
                            Row(
                              children: [
                                Container(
                                  height:5.h,
                                  clipBehavior: Clip.hardEdge,
                                  decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(13))
                                  ),
                                  child:Image.asset('assets/images/hend_logo.webp') ,
                                ),
                                SizedBox(width:1.h,),
                                Text(LocaleKeys.handyRestaurant.tr(),style: TextStyle(fontSize:12.sp,fontFamily: "Cairo-VariableFont_slnt,wght"),),
                              ],
                            )
                          ],
                        )),
                    Positioned(
                      right: 45.w,
                      top: 8.h,
                      child: Container(
                        height: 8.h,
                        width: 8.w,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape:BoxShape.circle,
                        ),
                        child: const Icon(Icons.shopping_cart_outlined,color: Colors.black,),
                      ),
                    )
                  ]
                );
              },
              separatorBuilder: (context, index) {
                return SizedBox(
                  width: 4.w,
                );
              },
              itemCount: 3)),
    );
  }
}
