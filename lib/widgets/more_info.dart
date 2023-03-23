import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';

class MoreInfoButton extends StatelessWidget {
  const MoreInfoButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ButtonBar(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset("assets/icons/row_down.svg"),
          const Text("Подробнее", style: TextStyle(
                                  fontFamily: 'Open Sans',
                                  color: Color.fromARGB(255, 0, 122, 255),
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0.35,
                                  //height: 17.0,
                                  fontSize: 12))
        ],
    );
  }
}