import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'more_info.dart';

class ProductDescription extends StatelessWidget {
  String description;
  ProductDescription({super.key, required this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
                margin: const EdgeInsets.only(top: 10),
                padding: const EdgeInsets.only(
                    left: 16, right: 16, top: 15, bottom: 15),
                width: double.infinity,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Описание',
                        style: TextStyle(
                            fontFamily: 'Open Sans',
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 18)),
                    Container(
                      margin: const EdgeInsets.only(top: 15),
                      child: Center(
                          child: Text(description,
                              style: const TextStyle(
                                  fontFamily: 'Open Sans',
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0.35,
                                  //height: 17.0,
                                  fontSize: 12))),
                    ),
                    const MoreInfoButton(),
                  ],
                ));
  }
}