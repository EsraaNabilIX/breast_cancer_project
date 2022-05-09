import 'dart:async';

import 'package:breast_cancer_project/screens/on_boarding/on_bording_screen.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  Timer? _timer;
  _startDelay() {
    _timer = Timer(const Duration(seconds: 3), _goNext);
  }

  _goNext() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const OnBoardingView(),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _startDelay();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.white, width: 2),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/splash.jpg'),
                const Text(
                  'Breast  Cancer ',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                      color: Colors.pink,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                )
              ],
            )

            // const Text(
            //   'Breast  Cancer ',
            //   style: TextStyle(
            //       color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
            // ),
            ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _timer?.cancel();
  }
}
