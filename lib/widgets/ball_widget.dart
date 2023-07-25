import 'package:flutter/material.dart';
import 'package:surf_practice_magic_ball/data.dart';

class MagicBall extends StatefulWidget {
  const MagicBall({Key? key}) : super(key: key);

  @override
  State<MagicBall> createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  String prediction = '';

  void getData() async {
    try {
      prediction = '';
      var data = await APIData().getPrediction();
      setState(() {
        prediction = data;
      });
    } catch (exeption) {
      print(exeption);
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        getData();
      },
      child: Container(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset('images/start/ball.png'),
            Image.asset('images/start/small_star.png',
                width: 250, height: 250, fit: BoxFit.fill),
            Image.asset('images/start/star.png',
                width: 210, height: 210, fit: BoxFit.fill),
            Text(
              prediction,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 32.0,
                fontFamily: 'GillSans',
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}