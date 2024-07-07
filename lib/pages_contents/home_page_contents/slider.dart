import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_task/view/blocs/home_cubit/home_page_cubit.dart';

class SliderWidget extends StatelessWidget {
  const SliderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: PageView(
          controller: HomePageCubit.get(context).sliderController,
          onPageChanged:(index){
            HomePageCubit.get(context).onWidgetChange(index);
          },
          children: [
            Container(
              color: Colors.blue,),
            Container(color: Colors.redAccent,),
            Container(color: Colors.orange,)],
        )
    );
  }
}
