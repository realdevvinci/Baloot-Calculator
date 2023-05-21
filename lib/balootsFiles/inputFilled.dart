import 'package:flutter/material.dart';
import 'package:baloot/sevices/constents.dart';

//
// String scores = "";

ValueNotifier<String> scores = ValueNotifier<String>("");

class inputFilled extends StatefulWidget {
  const inputFilled({Key? key}) : super(key: key);

  @override
  State<inputFilled> createState() => _inputFilledState();
}

class _inputFilledState extends State<inputFilled> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: ValueListenableBuilder(
          builder: (context, n, c) {
            return Text(
              scores.value,
              style: kTextScoresStyler(),
            );
          },
          valueListenable: scores,
        ),
      ),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color(0xff8d8e98),
          ),
          // BoxShadow(
          //   color: Colors.white,
          //   spreadRadius: 5.0,
          //   blurRadius: 20.0,
          // ),
        ],
        borderRadius: BorderRadius.horizontal(left: Radius.circular(7)),
      ),
    );
  }
}
