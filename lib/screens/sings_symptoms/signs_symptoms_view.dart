import 'package:flutter/material.dart';

import '../widgets/master_screen.dart';

class SignsAndSymView extends StatelessWidget {
  const SignsAndSymView({Key? key}) : super(key: key);

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
                      child:
                          Icon(Icons.arrow_back_ios, color: Colors.grey[600])),
                  Text(
                    '  signs & symptoms : ',
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
                'Signs and symptoms of breast cancer may include: \n'
                ' 1) A breast lump or thickening that feels different from the surrounding tissue \n'
                '2) Change in the size, shape or appearance of a breast \n'
                '3) Changes to the skin over the breast, such as dimpling \n'
                '4) flaking of the area of skin surrounding the nipple',
                style: TextStyle(
                    height: 1.4,
                    letterSpacing: 1.0,
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Text(
              '  Changes to look and feel for ',
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.grey[600],
                  fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'assets/images/about_1.jpeg',
                fit: BoxFit.cover,
              ),
            ),
            Text(
              '  A lump or swelling in the breast, \n upper chest or armpit ',
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.grey[600],
                  fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'assets/images/about_2.jpeg',
                fit: BoxFit.cover,
              ),
            ),
            Text(
              ' A change to the skin, such as \n'
              'puckering or dimpling ',
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.grey[600],
                  fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'assets/images/about_3.jpeg',
                fit: BoxFit.cover,
              ),
            ),
            Text(
              ' A change in the colour of the breast – the breast may look red or inflamed',
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.grey[600],
                  fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'assets/images/about_4.jpeg',
                fit: BoxFit.cover,
              ),
            ),
            Text(
              'A nipple change, for example it has become pulled in (inverted)',
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.grey[600],
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
