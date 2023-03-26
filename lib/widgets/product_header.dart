import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mobyte_task1/utils/constants.dart';

class ProductHeader extends StatelessWidget {
  String productHeader;
  double productPrice;
  String productPlacement;
  ProductHeader(
      {super.key,
      required this.productHeader,
      required this.productPrice,
      required this.productPlacement});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kPrimaryColor,
      width: double.infinity,
      padding: EdgeInsets.only(left: 16.sp, right: 16.sp, top: 12.sp),
      // padding:
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          //Heder of the product
          Text(productHeader,
                style:  Theme.of(context).textTheme.headline1?.copyWith(
                        letterSpacing: -0.01.sp,
                        fontWeight: FontWeight.w400,
                        fontSize: 18.sp,)),
          
          //Location of the product
          Container(
              margin: EdgeInsets.only(top: 5.sp),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SvgPicture.asset("assets/icons/geo.svg", color: Theme.of(context).primaryIconTheme.color),
                  Text(productPlacement,
                      style:  Theme.of(context).textTheme.headline2?.copyWith(
                      letterSpacing: -0.01.sp,
                      fontWeight: FontWeight.w400,
                      fontSize: 13.sp)),
                ],
              )),
          //Price of the product
          Container(
            width: 82.sp,
            height: 27.sp,
            color: const Color.fromARGB(255, 249, 224, 0),
            margin: EdgeInsets.only(top: 10.sp, bottom: 15.sp),
            child: Center(
                child: Text(
                    "${productPrice.toString().replaceAll('.', ',')} млн ₽",
                    style: Theme.of(context).textTheme.headline1?.copyWith(
                      letterSpacing: -0.01.sp,
                      fontWeight: FontWeight.w600,
                      fontSize: 16.sp))),
          ),
        ],
      ),
    );
  }
}
