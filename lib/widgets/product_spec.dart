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
        margin: const EdgeInsets.only(top: 10),
        padding:
            const EdgeInsets.only(left: 16, right: 16, top: 15, bottom: 15),
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
                margin: const EdgeInsets.only(top: 10, bottom: 10),
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
                margin: const EdgeInsets.only(left: 10),
                child: SvgPicture.asset(icon, color: Theme.of(context).iconTheme.color)),
              Container(
                margin: const EdgeInsets.only(left: 10,  top: 10, bottom: 5),
                child: Text(title,
                    style: Theme.of(context).textTheme.headline1?.copyWith(
                    letterSpacing: -0.03.sp,
                    fontWeight: FontWeight.w400,
                    fontSize: 15.sp)),
              ),
              const Spacer(),
              Container(
                margin: const EdgeInsets.only(left: 10, top: 10, bottom: 5),
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
