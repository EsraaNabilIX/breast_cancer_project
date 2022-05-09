import 'package:breast_cancer_project/screens/causes/images_scroll.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/master_screen.dart';

class CausesView extends StatelessWidget {
  const CausesView({Key? key}) : super(key: key);
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
                    child: Icon(Icons.arrow_back_ios, color: Colors.grey[600]),
                  ),
                  Text(
                    '  Causes  of breast cancer: ',
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.grey[600],
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            ImageScrollCard(),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              child: Text(
                "Breast cancer develops when abnormal cells in your breast divide and multiply. But experts don’t know exactly what causes this process to begin in the first place.However, research indicates that are several risk factors that may increase your chances of developing breast cancer.  ",
                style: TextStyle(
                    height: 1.4,
                    letterSpacing: 1.0,
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Text(
              '  Age : ',
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.grey[600],
                  fontWeight: FontWeight.bold),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              child: Text(
                'The risk of breast cancer increases with age. At 20 years old, the chance of developing breast cancer in the next decade is 0.06%Trusted Source. By the age of 70, this figure goes up to 3.84%..',
                style: TextStyle(
                    height: 1.4,
                    letterSpacing: 1.0,
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Text(
              ' Sex : ',
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.grey[600],
                  fontWeight: FontWeight.bold),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              child: Text(
                ' Women are much more likely to develop breast cancer than men.',
                style: TextStyle(
                    height: 1.4,
                    letterSpacing: 1.0,
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Text(
              '  Family history : ',
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.grey[600],
                  fontWeight: FontWeight.bold),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              child: Text(
                'If you have parents, siblings, children or other close relatives who’ve been diagnosed with breast cancer, you’re more likely to develop the disease at some point in your life. About 5% to 10% of breast cancers are due to single abnormal genes that are passed down from parents to children, and that can be discovered by genetic testing.',
                style: TextStyle(
                    height: 1.4,
                    letterSpacing: 1.0,
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Text(
              ' Genetics :',
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.grey[600],
                  fontWeight: FontWeight.bold),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              child: Text(
                ' A person with certain  mutations in the BRCA1 and BRCA2 genes has a higher chanceTrusted Source of developing breast cancerMutations in the TP53 gene also have links to increased breast cancer risk',
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
