import 'dart:math';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class Planets extends StatefulWidget {
  const Planets({Key? key}) : super(key: key);

  @override
  State<Planets> createState() => _PlanetsState();
}

class _PlanetsState extends State<Planets> {
  @override
  Widget build(BuildContext context) {
    Map e = ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "${e['text']}",
          style: const TextStyle(fontSize: 30),
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            Expanded(
              flex: 6,
              child: TweenAnimationBuilder(
                tween: Tween(begin: 0.0, end: 20 * pi),
                duration: const Duration(seconds: 30),
                curve: Curves.easeInOutBack,
                builder: (_, double v, __) {
                  return Transform.rotate(
                    angle: v,
                    child: SizedBox(
                      width: 400,
                      child: Image.asset(
                        "${e['image']}",
                        fit: BoxFit.contain,
                        // width: 400,
                      ),
                    ),
                  );
                },
              ),
            ),
            Expanded(
              flex: 4,
              child: Padding(
                padding: const EdgeInsets.all(6),
                child: TextLiquidFill(
                  textStyle: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.5),
                  text: "${e['detail']}",
                  boxBackgroundColor: Colors.grey.shade200,
                  textAlign: TextAlign.center,
                  boxHeight: 292,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
