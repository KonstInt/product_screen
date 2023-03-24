import 'package:flutter/material.dart';
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
    return Container(
      width: double.infinity,
      color: Colors.white,
      margin: const EdgeInsets.only(top: 10, bottom: 10),
      child: TextButton(
          onPressed: () => _launchUrl(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/png/avito_logo.png"),
              const Text("Смотреть на Avito",
                  style: TextStyle(
                      fontFamily: 'Open Sans',
                      color: Colors.black,
                      letterSpacing: 0.35,
                      fontWeight: FontWeight.w400,
                      fontSize: 15)),
            ],
          )),
    );
  }

  Future<void> _launchUrl() async {
    if (!await launchUrl(_url, mode: LaunchMode.inAppWebView)) {
      throw Exception('Could not launch $_url');
    }
  }
}
