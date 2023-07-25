import 'package:flutter/material.dart';
import 'package:surf_practice_magic_ball/widgets/ball_widget.dart';

class MagicBallScreen extends StatelessWidget {
  const MagicBallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF0F0B29), Colors.black],
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Column(
                children: [
                  MagicBall(),
                  SizedBox(
                    height: 30.0,
                  ),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset('images/start/Ellipse6.png'),
                      Image.asset('images/start/Ellipse7.png',
                          width: 150, fit: BoxFit.fill),
                    ],
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  Text(
                    'Нажмите на шар \nили потрясите телефон',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'GillSans',
                      color: Color(0xFF727272),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
