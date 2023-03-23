import 'package:flutter/material.dart';

class ProductHeader extends StatelessWidget {
  String productHeader;
  double productPrice;
  ProductHeader({super.key, required this.productHeader, required this.productPrice});

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