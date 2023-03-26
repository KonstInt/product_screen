import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobyte_task1/utils/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class AvitoRedirectButton extends StatefulWidget {
  String path;
  AvitoRedirectButton({super.key, required this.path});

  @override
  State<AvitoRedirectButton> createState() => _AvitoRedirectButtonState();
}

class _AvitoRedirectButtonState extends State<AvitoRedirectButton> {
  late final Uri _url;
  @override
  void initState() {
    super.initState();
     _url = Uri(
      scheme: "https",
      host: "www.avito.ru",
      path:
          widget.path);
  }
  

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        color: kPrimaryColor,
        margin: const EdgeInsets.only(top: 10, bottom: 10),
        child: TextButton(
            onPressed: () => _launchUrl(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 10),
                  child: Image.asset("assets/png/avito_logo.png")),
                Text("Смотреть на Avito",
                    style: 
                        Theme.of(context).textTheme.headline1?.copyWith(
                        letterSpacing: -0.03.sp,
                        fontWeight: FontWeight.w400,
                        fontSize: 15.sp)),
              ],
            )),
      ),
    );
  }

  Future<void> _launchUrl() async {
    if (!await launchUrl(_url, mode: LaunchMode.externalApplication,)) {
      throw Exception('Could not launch $_url');
    }
  }
}
