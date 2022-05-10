import 'package:flutter/material.dart';

class CheckView extends StatelessWidget {
  const CheckView({Key? key}) : super(key: key);

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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Welcome ',
            style: TextStyle(
                fontSize: 25,
                color: Colors.grey[600],
                fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Container(
              width: MediaQuery.of(context).size.width / 1.2,
              height: 55,
              decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xfffdb9c8), width: 5),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8)),
              child: const TextField(
                decoration: InputDecoration(
                    hintText: 'please enter your data ',
                    border: InputBorder.none),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 200),
            child: Container(
              width: 150,
              height: 40,
              decoration: BoxDecoration(
                color: const Color(0xfffdb9c8),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Text(
                  'submit',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
