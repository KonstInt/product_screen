import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'more_info.dart';

class ProductSpec extends StatelessWidget {
  Map<String, Map<String, String>> productSpec;
  ProductSpec({super.key, required this.productSpec});

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
                    const Text('Характеристики',
                        style: TextStyle(
                            fontFamily: 'Open Sans',
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 18)),
                    Container(
                        margin: const EdgeInsets.only(top: 10, bottom: 10),
                        child: const Text("Об объекте",
                            style: TextStyle(
                                fontFamily: 'Open Sans',
                                color: Color.fromARGB(100, 60, 60, 67),
                                fontWeight: FontWeight.w400,
                                letterSpacing: 0.35,
                                //height: 17.0,
                                fontSize: 12))),
                    ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: productSpec.length,
                        itemBuilder: (BuildContext context, int index) {
                          return buildRow(
                              productSpec.keys.elementAt(index),
                              productSpec.values
                                  .elementAt(index)
                                  .keys
                                  .elementAt(0),
                              productSpec.values
                                  .elementAt(index)
                                  .values
                                  .elementAt(0));
                        }),
                        const MoreInfoButton(),
                  ],
                ));
  }

   Widget buildRow(String icon, String title, String res) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SvgPicture.asset(icon),
              Container(
                margin: const EdgeInsets.only(left: 10, top: 2),
                child: Text(title,
                    style: const TextStyle(
                        fontFamily: 'Open Sans',
                        color: Colors.black,
                        letterSpacing: 0.35,
                        fontWeight: FontWeight.w400,
                        fontSize: 15)),
              ),
              const Spacer(),
              Container(
                margin: const EdgeInsets.only(left: 10, top: 2),
                child: Text(res,
                    style: const TextStyle(
                        fontFamily: 'Open Sans',
                        color: Colors.black,
                        letterSpacing: 0.35,
                        fontWeight: FontWeight.w400,
                        fontSize: 15)),
              )
            ],
          ),
          const Divider(
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}