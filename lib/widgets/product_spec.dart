import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mobyte_task1/utils/constants.dart';

import 'more_info.dart';

class ProductSpec extends StatelessWidget {
  Map<String, Map<String, String>> productSpec;
  ProductSpec({super.key, required this.productSpec});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 10.sp),
        padding:
             EdgeInsets.only(left: 16.sp, right: 16.sp, top: 15.sp, bottom: 15.sp),
        width: double.infinity,
        color: kPrimaryColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('Характеристики',
                style: Theme.of(context).textTheme.headline1?.copyWith(
                    letterSpacing: 0.02.sp,
                    fontWeight: FontWeight.w700,
                    fontSize: 18.sp)),
            Container(
                margin: EdgeInsets.only(top: 10.sp, bottom: 10.sp),
                child: Text("Об объекте",
                    style: Theme.of(context).textTheme.headline1?.copyWith(
                        color: kSecondaryTextColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 12.sp))),
           ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: productSpec.length,
                  itemBuilder: (BuildContext context, int index) {
                    return buildRow(
                        productSpec.keys.elementAt(index),
                        productSpec.values.elementAt(index).keys.elementAt(0),
                        productSpec.values.elementAt(index).values.elementAt(0), context);
                  }),
            
           
             const MoreInfoButton(),
          ],
        ));
  }

  Widget buildRow(String icon, String title, String res, BuildContext context) {
    return SizedBox(
      width: double.infinity.sp,
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 10.sp),
                child: SvgPicture.asset(icon, color: Theme.of(context).iconTheme.color)),
              Container(
                margin: EdgeInsets.only(left: 10.sp,  top: 10.sp, bottom: 5.sp),
                child: Text(title,
                    style: Theme.of(context).textTheme.headline1?.copyWith(
                    letterSpacing: -0.03.sp,
                    fontWeight: FontWeight.w400,
                    fontSize: 15.sp)),
              ),
              const Spacer(),
              Container(
                margin: EdgeInsets.only(left: 10.sp, top: 10.sp, bottom: 5.sp),
                child: Text(res,
                    style: Theme.of(context).textTheme.headline1?.copyWith(
                    letterSpacing: -0.03.sp,
                    fontWeight: FontWeight.w400,
                    fontSize: 16.sp)),
              )
            ],
          ),
          Divider(
            color: Theme.of(context).iconTheme.color,
          )
        ],
      ),
    );
  }
}
