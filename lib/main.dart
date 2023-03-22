import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobyte_task1/models/product.dart';

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
  int active_index = 0;

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
      productSpec:
          ProductSpec(plan: 'Смежная', topHeigth: 2.5, repair: 'Без ремонта'));
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
            icon: const Icon(CupertinoIcons.share),
            tooltip: 'Show Snackbar',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('This is a snackbar')));
            },
          ),
          IconButton(
            color: const Color(0xFF007AFF),
            icon: const Icon(Icons.more_horiz),
            tooltip: 'Go to the next page',
            onPressed: () {
              Navigator.push(context, MaterialPageRoute<void>(
                builder: (BuildContext context) {
                  return Scaffold(
                    appBar: AppBar(
                      title: const Text('Next page'),
                    ),
                    body: const Center(
                      child: Text(
                        'This is the next page',
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                  );
                },
              ));
            },
          ),
        ],
        elevation: 1,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 19),
            child: Stack(
              alignment: AlignmentDirectional.bottomCenter,
              children: [
                CarouselSlider.builder(
                  itemCount: product.urlImages.length,
                  itemBuilder: (context, index, realIndex) {
                    final urlImage = product.urlImages[index];
                    return buildImage(
                        urlImage, index, product.urlImages.length);
                  },
                  options: CarouselOptions(
                      viewportFraction: 1,
                      onPageChanged: (index, reason) => setState(
                            (() => active_index = index),
                          )),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  width: 35,
                  height: 16,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(102, 0, 0, 0),
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  child: Center(
                    child: Text(
                      "${active_index + 1}/${product.urlImages.length}",
                      style: const TextStyle(fontSize: 9, color: Colors.white, letterSpacing: 0.35),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.white,
            width: double.infinity,
            padding: EdgeInsets.only(left: 16, right: 16, top: 12),
            // padding:
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(product.header,
                    style: const TextStyle(
                        fontFamily: 'Open Sans',
                        color: Colors.black,
                        fontSize: 18,
                        letterSpacing: 0.35)),
                Container(
                  width: 82,
                  height: 27,
                  color: const Color.fromARGB(255, 249, 224, 0),
                  margin: const EdgeInsets.only(top: 10),
                  child: Center(
                      child: Text(
                          "${product.price.toString().replaceAll('.', ',')} млн ₽",
                          style: const TextStyle(
                              fontFamily: 'Open Sans',
                              color: Colors.black,
                              letterSpacing: 0.35,
                              fontWeight: FontWeight.w600,
                              fontSize: 16))),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            padding: const EdgeInsets.only(left: 16, right: 16, top: 15),
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
                    child: Text(
                        product.description,
                        style: const TextStyle(
                            fontFamily: 'Open Sans',
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0.35,
                            fontSize: 12))),
              ),
            ],
          ))
        ],
      ),
    );
  }

  Widget buildImage(String urlImage, int index, int size) {
    return Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: 235,
            margin: EdgeInsets.only(left: 15, right: 14),
            child: Image.network(
              urlImage,
              fit: BoxFit.fill,
              loadingBuilder: (BuildContext context, Widget child,
                  ImageChunkEvent? loadingProgress) {
                if (loadingProgress == null) return child;
                return const Center(
                  child: CircularProgressIndicator(
                    color: Colors.black,
                  ),
                );
              },
            ),
          ),
        ]);
  }
}
