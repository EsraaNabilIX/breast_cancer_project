import 'package:breast_cancer_project/screens/widgets/master_screen.dart';
import 'package:flutter/material.dart';

class IntroductionView extends StatelessWidget {
  const IntroductionView({Key? key}) : super(key: key);

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
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 12,
            ),
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
                    '   Introduction : ',
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
                'Breast cancer happens when cells in your breast grow and divide in an uncontrolled way, creating a mass of tissue called a tumor. Signs of breast cancer can include feeling a lump in your breast, experiencing a change in the size of your breast and seeing changes to the skin on your breasts. Mammograms can help with early detection.',
                style: TextStyle(
                    height: 1.4,
                    letterSpacing: 1.0,
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
              ),
            )
          ],
        ),
      ),
    );
  }
}
