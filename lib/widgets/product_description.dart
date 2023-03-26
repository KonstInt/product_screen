import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobyte_task1/utils/constants.dart';

import 'more_info.dart';

class ProductDescription extends StatelessWidget {
  String description;
  ProductDescription({super.key, required this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin:  EdgeInsets.only(top: 10.sp),
        padding:
             EdgeInsets.only(left: 16.sp, right: 16.sp, top: 15.sp, bottom: 5.sp),
        width: double.infinity,
        color: kPrimaryColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Header
            Text('Описание',
                style: Theme.of(context).textTheme.headline1?.copyWith(
                    letterSpacing: 0.02.sp,
                    fontWeight: FontWeight.w700,
                    fontSize: 18.sp)),
            //Description of the product
            Container(
              margin: EdgeInsets.only(top: 11.sp,),
              child: Center(
                  child: Text(description,
                      style: Theme.of(context).textTheme.headline1?.copyWith(
                      letterSpacing: 0.03.sp,
                      fontWeight: FontWeight.w400,
                      fontSize: 12.sp))),
            ),
            //Button for more information
            const MoreInfoButton(),
          ],
        ));
  }
}
