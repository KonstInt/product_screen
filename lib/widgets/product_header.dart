import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
      color: Colors.white,
      width: double.infinity,
      padding: const EdgeInsets.only(left: 16, right: 16, top: 12),
      // padding:
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(productHeader,
              style: const TextStyle(
                  fontFamily: 'Open Sans',
                  color: Colors.black,
                  fontSize: 18,
                  letterSpacing: 0.35)),
          TextButton(
              onPressed: () => {},
              style: TextButton.styleFrom(
                minimumSize: Size.zero, // Set this
                padding: EdgeInsets.zero, // and this
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SvgPicture.asset("assets/icons/geo.svg"),
                  Text(productPlacement,
                      style: const TextStyle(
                          fontFamily: 'Open Sans',
                          color: Colors.blue,
                          letterSpacing: 0.35,
                          fontWeight: FontWeight.w400,
                          fontSize: 13)),
                ],
              )),
          Container(
            width: 82,
            height: 27,
            color: const Color.fromARGB(255, 249, 224, 0),
            margin: const EdgeInsets.only(top: 10, bottom: 15),
            child: Center(
                child: Text(
                    "${productPrice.toString().replaceAll('.', ',')} млн ₽",
                    style: const TextStyle(
                        fontFamily: 'Open Sans',
                        color: Colors.black,
                        letterSpacing: 0.35,
                        fontWeight: FontWeight.w600,
                        fontSize: 16))),
          ),
        ],
      ),
    );
  }
}
