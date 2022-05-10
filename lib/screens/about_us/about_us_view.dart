import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../widgets/master_screen.dart';

class AboutUsView extends StatelessWidget {
  const AboutUsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              'assets/images/back_ground.jpg',
            ),
          ),
        ),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: Row(
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MasterScreen(),
                          ),
                        );
                      },
                      child:
                          Icon(Icons.arrow_back_ios, color: Colors.grey[600])),
                  Text(
                    '  About Us : ',
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.grey[600],
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              child: Text(
                'The application helps to examine yourself and provides you with the easiest ways to deal with the application.\n'
                ' We will provide you with more accurate results \n'
                ' As our machine learning has reached 95% of the accuracy of the training data and 92% of the accuracy of the test data\n, and this percentage is high compared to the rest of the ratios.',
                style: TextStyle(
                    height: 1.4,
                    letterSpacing: 1.0,
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                height: MediaQuery.of(context).size.height / 3,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: const Color(0xfffdb9c8), width: 10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Accuracy in training phase',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey[600],
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    CircularPercentIndicator(
                      animation: true,
                      radius: 80.0,
                      lineWidth: 15.0,
                      percent: .95,
                      center: const Text(
                        '95.0%',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                      progressColor: const Color(0xfffdb9c8),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                height: MediaQuery.of(context).size.height / 3,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: const Color(0xfffdb9c8), width: 10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Accuracy in testing phase',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey[600],
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    CircularPercentIndicator(
                      animation: true,
                      radius: 80.0,
                      lineWidth: 15.0,
                      percent: .92,
                      center: const Text(
                        '92.0%',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                      progressColor: const Color(0xfffdb9c8),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              child: Text(
                'We hope it is healthy, but we must always be reassured\n'
                'We are here for you.',
                style: TextStyle(
                    height: 1.4,
                    letterSpacing: 1.0,
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
