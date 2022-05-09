import 'package:breast_cancer_project/screens/auth/login/view/login_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../widgets/assets_manager.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({Key? key}) : super(key: key);

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  late final List<SliderObject> _list = _getSliderData();
  final PageController _pageController = PageController();
  int _currentIndex = 0;

  List<SliderObject> _getSliderData() => [
        SliderObject(
            "welcome",
            "it is a small app help you to check about your self ",
            ImagesAssets.onBoardingLogo1),
        SliderObject("Breast cancer app", "by adding a photo or DNA sequence ",
            ImagesAssets.onBoardingLogo2),
        SliderObject(
            "help you",
            "to check and care about your self any where just with phone ",
            ImagesAssets.onBoardingLogo3),
        SliderObject("let's go ", " we wish to be healthy but you must try",
            ImagesAssets.onBoardingLogo4),
      ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageView.builder(
        controller: _pageController,
        itemCount: _list.length,
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        itemBuilder: (context, index) => OnBoardingPage(_list[index]),
      ),
      bottomSheet: Container(
        color: Colors.white,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                child: const Text(
                  "skip",
                  textAlign: TextAlign.end,
                  style: TextStyle(
                      color: Color(0xfffdb9c8),
                      fontSize: 28,
                      fontWeight: FontWeight.bold),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginScreen(),
                      ));
                },
              ),
            ),
            _getButtonSheetWidget()
          ],
        ),
      ),
    );
  }

  Widget _getButtonSheetWidget() {
    return Container(
      color: const Color(0xfffdb9c8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //leftArrow
          Padding(
            padding: const EdgeInsets.all(20),
            child: GestureDetector(
              child: SizedBox(
                width: 20,
                height: 20,
                child: SvgPicture.asset(ImagesAssets.leftArrowIc),
              ),
              onTap: () {
                _pageController.animateToPage(_getPreviousIndex(),
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.bounceInOut);
              },
            ),
          ),
          // circle indicator
          Row(
            children: [
              for (int i = 0; i < _list.length; i++)
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: _getProperCircle(i),
                ),
            ],
          ),
          //rightArrow
          Padding(
            padding: const EdgeInsets.all(20),
            child: GestureDetector(
              child: SizedBox(
                width: 20,
                height: 20,
                child: SvgPicture.asset(ImagesAssets.rightArrowIc),
              ),
              onTap: () {
                _pageController.animateToPage(_getNextIndex(),
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.bounceInOut);
              },
            ),
          ),
        ],
      ),
    );
  }

  int _getPreviousIndex() {
    int previousIndex = --_currentIndex;
    if (_currentIndex == -1) {
      previousIndex = _list.length - 1;
    }
    return previousIndex;
  }

  int _getNextIndex() {
    int nextIndex = ++_currentIndex;
    if (_currentIndex == _list.length) {
      nextIndex = 0;
    }
    return nextIndex;
  }

  Widget _getProperCircle(int index) {
    if (index == _currentIndex) {
      return SvgPicture.asset(ImagesAssets.hollowCircle);
    } else {
      return SvgPicture.asset(ImagesAssets.solidCircle);
    }
  }
}

class OnBoardingPage extends StatelessWidget {
  final SliderObject _sliderObject;
  const OnBoardingPage(this._sliderObject, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(
          height: 200,
        ),
        Padding(
          padding: const EdgeInsets.all(2),
          child: Text(
            _sliderObject.title,
            textAlign: TextAlign.center,
            style: const TextStyle(
                color: Color(0xfffdb9c8),
                fontSize: 25,
                fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.all(8),
          child: Text(
            _sliderObject.subTitle,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 20,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Image.asset(_sliderObject.image),
        ),
      ],
    );
  }
}

class SliderObject {
  String title;
  String subTitle;
  String image;
  SliderObject(this.title, this.subTitle, this.image);
}
