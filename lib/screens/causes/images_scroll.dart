import 'package:flutter/material.dart';

import 'image_app.dart';
import 'indector_buttons.dart';

class ImageScrollCard extends StatefulWidget {
  const ImageScrollCard({Key? key}) : super(key: key);

  @override
  State<ImageScrollCard> createState() => _ImageScrollCardState();
}

class _ImageScrollCardState extends State<ImageScrollCard> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 4,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            PageView.builder(
              onPageChanged: (value) {
                setState(() {
                  currentPage = value;
                });
              },
              itemCount: imagesApp.length,
              itemBuilder: (context, index) => ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  imagesApp[index],
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              bottom: 13,
              right: 13,
              child: Row(
                children: List.generate(
                  imagesApp.length,
                  (index) => Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: IndicatorDots(isActive: index == currentPage),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
