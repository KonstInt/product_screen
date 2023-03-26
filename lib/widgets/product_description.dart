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
        margin: const EdgeInsets.only(top: 10),
        padding:
            const EdgeInsets.only(left: 16, right: 16, top: 15, bottom: 5),
        width: double.infinity,
        color: kPrimaryColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Header
            Text('Описание',
                style: Theme.of(context).textTheme.headline1?.copyWith(
                    letterSpacing: 0.02,
                    fontWeight: FontWeight.w700,
                    fontSize: 18.sp)),
            //Description of the product
            Container(
              margin: const EdgeInsets.only(top: 11,),
              child: Center(
                  child: Text(description,
                      style: Theme.of(context).textTheme.headline1?.copyWith(
                      letterSpacing: 0.03,
                      fontWeight: FontWeight.w400,
                      fontSize: 12.sp))),
            ),
            //Button for more information
            const MoreInfoButton(),
          ],
        ));
  }
}
