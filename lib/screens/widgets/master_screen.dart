import 'package:breast_cancer_project/screens/check/check_view.dart';
import 'package:breast_cancer_project/screens/home/home_view.dart';
import 'package:breast_cancer_project/screens/infoGraph/infograph_view.dart';
import 'package:flutter/material.dart';

class MasterScreen extends StatefulWidget {
  const MasterScreen({Key? key}) : super(key: key);
  @override
  _MasterScreenState createState() => _MasterScreenState();
}

class _MasterScreenState extends State<MasterScreen> {
  var screens = [const HomeView(), const CheckView(), const InfoGraphView()];
  int screensIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[screensIndex],
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(25),
          topLeft: Radius.circular(25),
        ),
        child: BottomNavigationBar(
          onTap: (i) {
            setState(() {
              screensIndex = i;
            });
          },
          type: BottomNavigationBarType.fixed,
          backgroundColor: const Color(0xfffdb9c8),
          currentIndex: screensIndex,
          selectedItemColor: Colors.grey,
          unselectedItemColor: Colors.white,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 30,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.lightbulb_outline,
                  size: 30,
                ),
                label: ' check '),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.insert_chart_outlined,
                  size: 30,
                ),
                label: ' infoGraph'),
          ],
        ),
      ),
    );
  }
}
