import 'package:flutter/material.dart';
import '../sevices/constents.dart';

ValueNotifier<bool> switcher = ValueNotifier<bool>(true);

class whosTurn extends StatefulWidget {
  const whosTurn({Key? key}) : super(key: key);

  @override
  State<whosTurn> createState() => _whosTurnState();
}

class _whosTurnState extends State<whosTurn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Center(
        child: ValueListenableBuilder(valueListenable: switcher, builder: (context , c ,n ) => Text(
          switcher.value ? "التسجيل: لنا" : "التسجيل: لهم",
          textAlign: TextAlign.center,
          style: kWhosTurnStyler(),
        ),),
      ),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color(0xff4C4F5E),
          ),
          // BoxShadow(
          //   color: Colors.white,
          //   spreadRadius: 5.0,
          //   blurRadius: 20.0,
          // ),
        ],
        borderRadius: BorderRadius.horizontal(right: Radius.circular(7)),
      ),
    );
  }
}
