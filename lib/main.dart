import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
  final urlImages = [
    'https://s3-alpha-sig.figma.com/img/9a02/bd2a/aee8519c2c5734be681be4edbe411ae1?Expires=1680480000&Signature=gyzH8IqgMBm8U8enxdadmMyjLbIfNuuwL8KoGazNaTd0B7Lervgt5EZefiF1CzfhG85qnvXQ~7oiF3gkbftj4L~AzSnT-vjcGnQdAdUGyNJPn9UlLYaftLKac5CCzpCbbkUKvc-LV7nB9Cd~yAeku-9TtCXi2jRe1j4jI8o0hyJotYIYopircNPg2KMSzBI3yQFtXfwuhbxORbnC5iiy9wiN59te9foAvzd3maYYlj3vshEn4-3zvARozPF1A6vKTVaDDHtT3bGkNZCuYUJ~WjT-bt5E9pIru6BNOEELqyHKGWCVfV9cxVaq7nAuBIPb349Z5TpN7WimXTGnJQidxA__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4',
    'https://s3-alpha-sig.figma.com/img/9a02/bd2a/aee8519c2c5734be681be4edbe411ae1?Expires=1680480000&Signature=gyzH8IqgMBm8U8enxdadmMyjLbIfNuuwL8KoGazNaTd0B7Lervgt5EZefiF1CzfhG85qnvXQ~7oiF3gkbftj4L~AzSnT-vjcGnQdAdUGyNJPn9UlLYaftLKac5CCzpCbbkUKvc-LV7nB9Cd~yAeku-9TtCXi2jRe1j4jI8o0hyJotYIYopircNPg2KMSzBI3yQFtXfwuhbxORbnC5iiy9wiN59te9foAvzd3maYYlj3vshEn4-3zvARozPF1A6vKTVaDDHtT3bGkNZCuYUJ~WjT-bt5E9pIru6BNOEELqyHKGWCVfV9cxVaq7nAuBIPb349Z5TpN7WimXTGnJQidxA__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4',
    'https://s3-alpha-sig.figma.com/img/9a02/bd2a/aee8519c2c5734be681be4edbe411ae1?Expires=1680480000&Signature=gyzH8IqgMBm8U8enxdadmMyjLbIfNuuwL8KoGazNaTd0B7Lervgt5EZefiF1CzfhG85qnvXQ~7oiF3gkbftj4L~AzSnT-vjcGnQdAdUGyNJPn9UlLYaftLKac5CCzpCbbkUKvc-LV7nB9Cd~yAeku-9TtCXi2jRe1j4jI8o0hyJotYIYopircNPg2KMSzBI3yQFtXfwuhbxORbnC5iiy9wiN59te9foAvzd3maYYlj3vshEn4-3zvARozPF1A6vKTVaDDHtT3bGkNZCuYUJ~WjT-bt5E9pIru6BNOEELqyHKGWCVfV9cxVaq7nAuBIPb349Z5TpN7WimXTGnJQidxA__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4',
    'https://s3-alpha-sig.figma.com/img/9a02/bd2a/aee8519c2c5734be681be4edbe411ae1?Expires=1680480000&Signature=gyzH8IqgMBm8U8enxdadmMyjLbIfNuuwL8KoGazNaTd0B7Lervgt5EZefiF1CzfhG85qnvXQ~7oiF3gkbftj4L~AzSnT-vjcGnQdAdUGyNJPn9UlLYaftLKac5CCzpCbbkUKvc-LV7nB9Cd~yAeku-9TtCXi2jRe1j4jI8o0hyJotYIYopircNPg2KMSzBI3yQFtXfwuhbxORbnC5iiy9wiN59te9foAvzd3maYYlj3vshEn4-3zvARozPF1A6vKTVaDDHtT3bGkNZCuYUJ~WjT-bt5E9pIru6BNOEELqyHKGWCVfV9cxVaq7nAuBIPb349Z5TpN7WimXTGnJQidxA__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4',
    'https://s3-alpha-sig.figma.com/img/9a02/bd2a/aee8519c2c5734be681be4edbe411ae1?Expires=1680480000&Signature=gyzH8IqgMBm8U8enxdadmMyjLbIfNuuwL8KoGazNaTd0B7Lervgt5EZefiF1CzfhG85qnvXQ~7oiF3gkbftj4L~AzSnT-vjcGnQdAdUGyNJPn9UlLYaftLKac5CCzpCbbkUKvc-LV7nB9Cd~yAeku-9TtCXi2jRe1j4jI8o0hyJotYIYopircNPg2KMSzBI3yQFtXfwuhbxORbnC5iiy9wiN59te9foAvzd3maYYlj3vshEn4-3zvARozPF1A6vKTVaDDHtT3bGkNZCuYUJ~WjT-bt5E9pIru6BNOEELqyHKGWCVfV9cxVaq7nAuBIPb349Z5TpN7WimXTGnJQidxA__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4'
  ];
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
            margin: EdgeInsets.all(5),
            child: Stack(
              alignment: AlignmentDirectional.bottomCenter,
              children: [
                CarouselSlider.builder(
                  itemCount: urlImages.length,
                  itemBuilder: (context, index, realIndex) {
                    final urlImage = urlImages[index];
                    return buildImage(urlImage, index, urlImages.length);
                  },
                  options: CarouselOptions(
                      viewportFraction: 1,
                      onPageChanged: (index, reason) => setState(
                            (() => active_index = index),
                          )),
                ),
                Chip(
                  label: Text(
                    "${active_index + 1}/${urlImages.length}",
                  ),
                  backgroundColor: Colors.grey.withOpacity(0.1),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildImage(String urlImage, int index, int size) {
    return Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: <Widget>[
          Container(
            //margin: EdgeInsets.symmetric(horizontal: 12),

            color: Colors.grey,
            child: FittedBox(
              fit: BoxFit.fill,
              child: Image.network(urlImage),
            ),
          ),
        ]);
  }
}
