
import "package:flutter/material.dart";
import 'package:baloot/balootsFiles/inputFilled.dart';
import 'package:baloot/balootsFiles/numButton.dart';
import './sevices/constents.dart';
import 'balootsFiles/balootScores.dart';
import './balootsFiles/inputTurn.dart';
import "./balootsFiles/numbPad.dart";

ValueNotifier<int> ourTotal = ValueNotifier<int>(0);
ValueNotifier<int> theirsTotal = ValueNotifier<int>(0);

class firsPage extends StatefulWidget {
  @override
  State<firsPage> createState() => _firsPageState();


}

class _firsPageState extends State<firsPage> {





  @override
  Widget build(BuildContext context) {

    return Scaffold(
     appBar: AppBar(
       title: Text("قيدها"),
     ),
      body: SafeArea(
          child: Column(
        children: [

          Padding(
            padding: const EdgeInsets.all( 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [

                Column(
                  children: [
                    Text("لهم", style: kTextStylers()),
                    ValueListenableBuilder(valueListenable: theirsTotal, builder: (context , n , c ) =>  Text(theirsTotal.value.toString(), style: kTextStylers()))],
                ),  Column(
                  children: [
                    Text("لنا", style: kTextStylers()),
                    ValueListenableBuilder(valueListenable: ourTotal, builder: (context , n , c ) => Text(ourTotal.value.toString(), style: kTextStylers()))

                  ],
                ),
              ],
            ),
          ),
          scorelist(),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: IntrinsicHeight(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(flex: 1, child: inputFilled()),
                  Expanded(flex: 3, child: whosTurn())
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                numPad(),
                SizedBox(height: kPaddingConstant()),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(flex: 6 ,child: numbButton.chooseColor( "تسجيل" , 0xff24d876)),
                    SizedBox(width: kPaddingConstant()),
                    Expanded(flex:5 ,child: (numbButton("0", "0"))  ),
                    // SizedBox(width: kPaddingConstant()),
                    // Expanded(flex: 5 ,child: (numbButton("0", "⌫"))  )
                  ],
                )
              ],
            ),
          ),
        ],
      )),
    );


  }

}


