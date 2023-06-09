import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobyte_task1/utils/constants.dart';

class ImageCarousel extends StatefulWidget {
  List<String> productImages;

  ImageCarousel({super.key, required this.productImages});

  @override
  State<ImageCarousel> createState() => _ImageCarouselState();
}

class _ImageCarouselState extends State<ImageCarousel> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    
    return  Container(
              margin: EdgeInsets.only(top: 19.sp),
              child: Stack(
                alignment: AlignmentDirectional.bottomCenter,
                children: [
                  CarouselSlider.builder(
                    itemCount: widget.productImages.length,
                    itemBuilder: (context, index, realIndex) {
                      final urlImage = widget.productImages[index];
                      return buildImage(
                          urlImage, index, widget.productImages.length);
                    },
                    options: CarouselOptions(
                        viewportFraction: 1,
                        onPageChanged: (index, reason) => setState(
                              (() => activeIndex = index),
                            )),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 10.sp),
                    width: 35.sp,
                    height: 16.sp,
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(153, 0, 0, 0),
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    child: Center(
                      child: Text(
                        "${activeIndex + 1}/${widget.productImages.length}",
                        style: TextStyle(
                            fontSize: 9.sp,
                            color: kPrimaryColor,
                            letterSpacing: 0.35.sp),
                      ),
                    ),
                  ),
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
            height: 235.sh,
            margin: EdgeInsets.only(left: 15.sp, right: 14.sp),
            child: Image.network(
              urlImage,
              fit: BoxFit.fill,
              
              loadingBuilder: (BuildContext context, Widget child,
                  ImageChunkEvent? loadingProgress) {
                if (loadingProgress == null) return child;
                return const Center(
                  child: CircularProgressIndicator(
                    color: kPrimaryTextColor,
                  ),
                );
              },
            ),
          ),
        ]);
  }
}