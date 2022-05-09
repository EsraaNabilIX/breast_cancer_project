import 'package:breast_cancer_project/screens/auth/login/view/reset_password.dart';
import 'package:breast_cancer_project/screens/auth/login/widgets/custom_text_filed.dart';
import 'package:breast_cancer_project/screens/widgets/master_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                width: MediaQuery.of(context).size.width / 2,
                height: MediaQuery.of(context).size.height / 4,
                decoration: BoxDecoration(
                  color: const Color(0xfffdb9c8).withOpacity(.1),
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                    image: AssetImage(
                      'assets/images/logo.jpg',
                    ),
                  ),
                )),
            CustomFormField(
                hint: 'Enter your Email please ',
                secure: false,
                icons: Icons.email),
            CustomFormField(
                hint: 'Enter your password ', secure: true, icons: Icons.lock),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ResetPassword(),
                        ),
                      );
                    },
                    child: Text(
                      'Forget Your PassWord ?',
                      style: TextStyle(fontSize: 14, color: Colors.grey[700]),
                    ),
                  ),
                ),
              ],
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MasterScreen(),
                  ),
                );
              },
              child: Container(
                width: MediaQuery.of(context).size.width / 1.5,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: const Color(0xfffdb9c8),
                ),
                child: const Center(
                  child: Text(
                    'Login',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                        fontSize: 18),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
