import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

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
              margin: const EdgeInsets.only(top: 19),
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
                    margin: const EdgeInsets.only(bottom: 10),
                    width: 35,
                    height: 16,
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(102, 0, 0, 0),
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    child: Center(
                      child: Text(
                        "${activeIndex + 1}/${widget.productImages.length}",
                        style: const TextStyle(
                            fontSize: 9,
                            color: Colors.white,
                            letterSpacing: 0.35),
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
            height: 235,
            margin: const EdgeInsets.only(left: 15, right: 14),
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