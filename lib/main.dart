import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mobyte_task1/models/product.dart';
import 'package:mobyte_task1/widgets/avito_redirect_button.dart';
import 'package:mobyte_task1/widgets/picture_carousel.dart';
import 'package:mobyte_task1/widgets/product_description.dart';
import 'package:mobyte_task1/widgets/product_header.dart';
import 'package:mobyte_task1/widgets/product_spec.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1080, 2280),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Предложение',
          // You can use the library anywhere in the app even in theme
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: child,
        );
      },
      child: const MyHomePage(title: 'Предложение'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final Product product = Product(
      urlImages: [
        'https://s3-alpha-sig.figma.com/img/9a02/bd2a/aee8519c2c5734be681be4edbe411ae1?Expires=1680480000&Signature=gyzH8IqgMBm8U8enxdadmMyjLbIfNuuwL8KoGazNaTd0B7Lervgt5EZefiF1CzfhG85qnvXQ~7oiF3gkbftj4L~AzSnT-vjcGnQdAdUGyNJPn9UlLYaftLKac5CCzpCbbkUKvc-LV7nB9Cd~yAeku-9TtCXi2jRe1j4jI8o0hyJotYIYopircNPg2KMSzBI3yQFtXfwuhbxORbnC5iiy9wiN59te9foAvzd3maYYlj3vshEn4-3zvARozPF1A6vKTVaDDHtT3bGkNZCuYUJ~WjT-bt5E9pIru6BNOEELqyHKGWCVfV9cxVaq7nAuBIPb349Z5TpN7WimXTGnJQidxA__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4',
        'https://s3-alpha-sig.figma.com/img/9a02/bd2a/aee8519c2c5734be681be4edbe411ae1?Expires=1680480000&Signature=gyzH8IqgMBm8U8enxdadmMyjLbIfNuuwL8KoGazNaTd0B7Lervgt5EZefiF1CzfhG85qnvXQ~7oiF3gkbftj4L~AzSnT-vjcGnQdAdUGyNJPn9UlLYaftLKac5CCzpCbbkUKvc-LV7nB9Cd~yAeku-9TtCXi2jRe1j4jI8o0hyJotYIYopircNPg2KMSzBI3yQFtXfwuhbxORbnC5iiy9wiN59te9foAvzd3maYYlj3vshEn4-3zvARozPF1A6vKTVaDDHtT3bGkNZCuYUJ~WjT-bt5E9pIru6BNOEELqyHKGWCVfV9cxVaq7nAuBIPb349Z5TpN7WimXTGnJQidxA__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4',
        'https://s3-alpha-sig.figma.com/img/9a02/bd2a/aee8519c2c5734be681be4edbe411ae1?Expires=1680480000&Signature=gyzH8IqgMBm8U8enxdadmMyjLbIfNuuwL8KoGazNaTd0B7Lervgt5EZefiF1CzfhG85qnvXQ~7oiF3gkbftj4L~AzSnT-vjcGnQdAdUGyNJPn9UlLYaftLKac5CCzpCbbkUKvc-LV7nB9Cd~yAeku-9TtCXi2jRe1j4jI8o0hyJotYIYopircNPg2KMSzBI3yQFtXfwuhbxORbnC5iiy9wiN59te9foAvzd3maYYlj3vshEn4-3zvARozPF1A6vKTVaDDHtT3bGkNZCuYUJ~WjT-bt5E9pIru6BNOEELqyHKGWCVfV9cxVaq7nAuBIPb349Z5TpN7WimXTGnJQidxA__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4',
        'https://s3-alpha-sig.figma.com/img/9a02/bd2a/aee8519c2c5734be681be4edbe411ae1?Expires=1680480000&Signature=gyzH8IqgMBm8U8enxdadmMyjLbIfNuuwL8KoGazNaTd0B7Lervgt5EZefiF1CzfhG85qnvXQ~7oiF3gkbftj4L~AzSnT-vjcGnQdAdUGyNJPn9UlLYaftLKac5CCzpCbbkUKvc-LV7nB9Cd~yAeku-9TtCXi2jRe1j4jI8o0hyJotYIYopircNPg2KMSzBI3yQFtXfwuhbxORbnC5iiy9wiN59te9foAvzd3maYYlj3vshEn4-3zvARozPF1A6vKTVaDDHtT3bGkNZCuYUJ~WjT-bt5E9pIru6BNOEELqyHKGWCVfV9cxVaq7nAuBIPb349Z5TpN7WimXTGnJQidxA__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4',
        'https://s3-alpha-sig.figma.com/img/9a02/bd2a/aee8519c2c5734be681be4edbe411ae1?Expires=1680480000&Signature=gyzH8IqgMBm8U8enxdadmMyjLbIfNuuwL8KoGazNaTd0B7Lervgt5EZefiF1CzfhG85qnvXQ~7oiF3gkbftj4L~AzSnT-vjcGnQdAdUGyNJPn9UlLYaftLKac5CCzpCbbkUKvc-LV7nB9Cd~yAeku-9TtCXi2jRe1j4jI8o0hyJotYIYopircNPg2KMSzBI3yQFtXfwuhbxORbnC5iiy9wiN59te9foAvzd3maYYlj3vshEn4-3zvARozPF1A6vKTVaDDHtT3bGkNZCuYUJ~WjT-bt5E9pIru6BNOEELqyHKGWCVfV9cxVaq7nAuBIPb349Z5TpN7WimXTGnJQidxA__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4'
      ],
      header: 'Квартира-студия, 40м, 16/23 эт.',
      price: 2.3,
      description:
          'Дом расположен в ЗЖМ, мкр Левенцовский, вблизи остановки общественного транспорта. Рядом расположены гипермаркеты "Магнит", "Пятерочка", "Лента", "Метро", отделение "Сбербанка". В районе работают 6 детских садов, 1 школа. Есть собственная управляющая компания.',
      productSpec: {
        "assets/icons/plan.svg": {"Планировка": "Смежная"},
        "assets/icons/top.svg": {"Высота потолков": "От 2,5м"},
        "assets/icons/repair.svg": {"Ремонт": "Без ремонта"}
      },
      path: "/rostov-na-donu/kvartiry/kvartira-studiya_31m_2232et._2601517511",
      place: "Центр (Кировский р-н.), Очаковская, 39");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: const TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        actions: <Widget>[
          IconButton(
            color: const Color(0xFF007AFF),
            icon: SvgPicture.asset("assets/icons/share.svg"),
            tooltip: 'Show Snackbar',
            onPressed: () {},
          ),
          IconButton(
            color: const Color(0xFF007AFF),
            icon: SvgPicture.asset("assets/icons/three_dots.svg"),
            tooltip: 'Go to the next page',
            onPressed: () {},
          ),
        ],
        elevation: 1,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ImageCarousel(productImages: product.urlImages),
            ProductHeader(
                productHeader: product.header, productPrice: product.price, productPlacement: product.place,),
            ProductDescription(description: product.description),
            ProductSpec(productSpec: product.productSpec),
            AvitoRedirectButton(path: product.path),
          ],
        ),
      ),
    );
  }
}
