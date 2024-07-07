import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../generated/locale_keys.g.dart';

class SliderWidget extends StatelessWidget {
   SliderWidget({super.key});
   PageController listController = PageController();
final List colors = [Colors.blue,Colors.red,Colors.orange];
  @override
  Widget build(BuildContext context) {
    return
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(17.0),
              child: SizedBox(
                height: 18.h,
                  child:ListView.separated(
                    controller: listController,
                    scrollDirection: Axis.horizontal,
                      itemBuilder: (context,index){
                        return Container(
                            height: 70.h,
                            width: 90.w,
                            clipBehavior: Clip.hardEdge,
                            decoration: BoxDecoration(
                                color: colors[index],
                                    borderRadius: const BorderRadius.all(Radius.circular(10))
                            ),
                            child: Image.asset('assets/images/special-sale-discount-offer-promotion-web-app-banner-vector-illustration_7081-878.jpg',fit:BoxFit.cover,),
                        );

                      },
                      separatorBuilder: (context,index){
                        return SizedBox(
                          width: 5.w,
                        );
                      },
                      itemCount: 3)

              ),
            ),
              Container(
                width:68,
                height:0.7.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.grey.shade300,
                ),
                child: SmoothPageIndicator(
                    effect:SlideEffect(
                    radius:5.0,
                    activeDotColor:Color(0xff007a7b),
                    dotColor:Colors.grey.shade200,
                    dotHeight:0.7.h,
                    dotWidth: 5.0.w,
                    spacing:0.0,
                    ),
                controller: listController, count: 3
                ),
              ),
            Padding(
              padding: const EdgeInsets.all(17.0),
              child: Row(children: [Text(LocaleKeys.sections.tr(),style: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Cairo-VariableFont_slnt,wght',color: Colors.black),)],),
            )

          ],
        );
  }
}
