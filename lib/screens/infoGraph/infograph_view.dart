import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../widgets/master_screen.dart';

class InfoGraphView extends StatelessWidget {
  const InfoGraphView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        child: ListView(
          children: [
            Row(
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
                    child: Icon(Icons.arrow_back_ios, color: Colors.grey[600])),
                Text(
                  'InfoGraph : ',
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.grey[600],
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Container(
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
                    'Adolescent girls and breast cancer',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey[600],
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CircularPercentIndicator(
                    radius: 70.0,
                    lineWidth: 15.0,
                    percent: .07,
                    animation: true,
                    center: const Text(
                      '0.7%',
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
            SizedBox(
              height: 20,
            ),
            const Text(
              'WebMD researchers report that less than 7% of breast cancer cases occur in women under the age of 40.',
              style: TextStyle(
                  height: 1.4,
                  letterSpacing: 1.0,
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: MediaQuery.of(context).size.height / 3,
              width: MediaQuery.of(context).size.width / 1.2,
              child: Image.asset(
                'assets/images/3355.jpg',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: MediaQuery.of(context).size.height / 3,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: const Color(0xfffdb9c8), width: 10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  CircularPercentIndicator(
                    animation: true,
                    radius: 80.0,
                    lineWidth: 15.0,
                    percent: .75,
                    center: const Text(
                      '75.0%',
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
            const Text(
              'It is noteworthy that 75% of women diagnosed with breast cancer have no known and specific risk factors, and therefore screening for breast cancer only for women who have risk factors will lead to the loss and loss of a large number of women who can develop breast cancer.',
              style: TextStyle(
                  height: 1.4,
                  letterSpacing: 1.0,
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
