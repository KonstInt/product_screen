import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';

class MoreInfoButton extends StatelessWidget {
  const MoreInfoButton({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        onPressed: () {},
        minWidth: 0,
        padding: EdgeInsets.zero,
        child: Row(
          children: [
            SvgPicture.asset(
              "assets/icons/row_down.svg",
              color: Theme.of(context).primaryIconTheme.color,
            ),
            const SizedBox(width: 10),
            Text("Подробнее",
                style: Theme.of(context).textTheme.headline2?.copyWith(
                    letterSpacing: -0.03,
                    fontWeight: FontWeight.w400,
                    fontSize: 12))
          ],
        ));
  }
}
