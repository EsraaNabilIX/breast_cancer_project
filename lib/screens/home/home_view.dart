import 'package:breast_cancer_project/screens/causes/causes_view.dart';
import 'package:breast_cancer_project/screens/home/widgets/home_card.dart';
import 'package:breast_cancer_project/screens/introduction/introduction_view.dart';
import 'package:breast_cancer_project/screens/sings_symptoms/signs_symptoms_view.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

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
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 1.5,
          child: ListView(
            physics: const ScrollPhysics(),
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.home,
                      size: 30,
                      color: Colors.grey[600],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Home',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey[600],
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const IntroductionView(),
                    ),
                  );
                },
                child: const HomeCard(
                  title: 'Introduction',
                  assetImage: 'assets/images/intro.jpg',
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CausesView(),
                    ),
                  );
                },
                child: const HomeCard(
                    title: 'Causes', assetImage: 'assets/images/causes.jpg'),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignsAndSymView(),
                    ),
                  );
                },
                child: const HomeCard(
                  title: 'Signs & symptoms',
                  assetImage: 'assets/images/signs.jpg',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
