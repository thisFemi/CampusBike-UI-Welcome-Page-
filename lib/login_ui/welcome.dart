import 'package:flutter/material.dart';

import 'package:campusbike/login_ui/sign_in.dart';
import 'package:campusbike/login_ui/sign_up.dart';


import 'package:campusbike/login_ui/constants.dart';

class welcomePage extends StatelessWidget {
  const welcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Color.fromARGB(255, 16, 0, 0),
            body: Container(
                width: double.infinity,
                color: kBgColor,
                child: CustomPaint(
                  painter: BackgroundPaint(),
                  // decoration: BoxDecoration(
                  //   color: Color(0x350707),
                  // ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(120, 70, 70, 0),
                              child: Text(
                                'CampusBike',
                                style: const TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 69, 9, 9),
                                    fontFamily: 'Raleway'),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(125, 0, 70, 70),
                              child: SizedBox(
                                width: 120,
                                child: Image.asset(
                                  'assets/images/bike.jpg',
                                  alignment: Alignment.center,
                                  width: 100,
                                  height: 100,

                                  //color: kHeaderColor,
                                ),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 35),
                                child: Text(
                                  'Take a Ride,\nSave the Energy. ',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 253, 253, 255),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 32),
                                )),
                            SizedBox(
                              height: 15,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 35),
                              child: Text(
                                'Campus Bike for all Students,\nSharing  and Saving Energy.',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 244, 244, 245),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                            ),
                            SizedBox(
                              height: 50,
                            ),
                            Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 35)),
                            Container(
                              height: 50,
                              width: 320,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color.fromARGB(255, 248, 246, 246)),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SignUp()),
                                  );
                                },
                                child: Center(
                                  child: Text(
                                    "Sign Up",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Color(0xFF4C0303),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 35)),
                            Container(
                              height: 50,
                              width: 320,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                gradient: LinearGradient(colors: [
                                  Color(0xFFffb421),
                                  Color(0xFFff7521)
                                ]),
                              ),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SignIn()),
                                  );
                                },
                                child: Center(
                                    child: Text(
                                  'Sign In',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Color.fromARGB(255, 251, 249, 250),
                                      fontWeight: FontWeight.bold),
                                )),
                              ),
                            ),
                          ],
                        )
                      ]),
                ))));
  }
}

class BackgroundPaint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    final height = size.height;
    final width = size.width;

    Paint paint = Paint()
      ..style = PaintingStyle.fill
      ..isAntiAlias = true
      ..color = kPainterColor;

    Path upperPath = Path();

    upperPath.moveTo(0, height * 0.1);
    upperPath.quadraticBezierTo(
        width * 0.40, height * 0.42, width, height * 0.25);

    upperPath.lineTo(width, 0);
    upperPath.lineTo(0, 0);

    canvas.drawPath(upperPath, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
