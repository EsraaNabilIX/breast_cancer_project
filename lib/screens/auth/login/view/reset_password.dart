import 'package:flutter/material.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);

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
        children: [
          Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              width: MediaQuery.of(context).size.width / 2,
              height: MediaQuery.of(context).size.height / 4,
              decoration: BoxDecoration(
                color: Color(0xfffdb9c8).withOpacity(.1),
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                  image: AssetImage(
                    'assets/images/logo.jpg',
                  ),
                ),
              )),
          // CustomFormField(hint: '', secure: true, icons: Icons.lock)
        ],
      ),
    );
  }
}
