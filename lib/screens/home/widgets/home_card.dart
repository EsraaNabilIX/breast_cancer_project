import 'package:flutter/material.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({Key? key, required this.title, required this.assetImage})
      : super(key: key);
  final String title;
  final String assetImage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 4,
          decoration: BoxDecoration(
              border: Border.all(color: Color(0xfffdb9c8), width: 15),
              borderRadius: BorderRadius.circular(15),
              color: Colors.white),
          child: Column(
            children: [
              Text(
                title,
                style: const TextStyle(
                    fontSize: 18,
                    color: Colors.black38,
                    fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 3),
                child: Container(
                  width: MediaQuery.of(context).size.width / 1.2,
                  height: MediaQuery.of(context).size.height / 6,
                  color: Colors.red,
                  child: Image.asset(
                    assetImage,
                    fit: BoxFit.cover,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
