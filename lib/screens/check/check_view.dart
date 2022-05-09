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
    );
    ;
  }
}
