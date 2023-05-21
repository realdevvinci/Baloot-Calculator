import 'package:flutter/material.dart';
import 'package:baloot/sevices/constents.dart';
import "numButton.dart";


class numPad extends StatelessWidget {
  const numPad({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (Row(

      children: [
        Expanded(
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              numbButton.chooseColor("صكة جديده" , 0xff24d876),
              SizedBox(height: kPaddingConstant()),

              numbButton.chooseColor( "حذف" , 0xff24d876),
              SizedBox(height: kPaddingConstant()),

              numbButton.chooseColor("تراجع" , 0xff24d876),

            ],
          ),
        ),            SizedBox(width: kPaddingConstant()),

        Column(
          children: [
            numbButton("7", "7"),
            SizedBox(height: kPaddingConstant()),

            numbButton("4", "4"),
            SizedBox(height: kPaddingConstant()),

            numbButton("1", "1"),

          ],
        ),            SizedBox(width: kPaddingConstant()),

        Column(
          children: [
            numbButton("8", "8"),
            SizedBox(height: kPaddingConstant()),
            numbButton("5", "5"),
            SizedBox(height: kPaddingConstant()),

            numbButton("2", "2"),


          ],
        ),            SizedBox(width: kPaddingConstant()),

        Column(
          children: [
            numbButton("9", "9"),
            SizedBox(height: kPaddingConstant()),

            numbButton("6", "6"),
            SizedBox(height: kPaddingConstant()),

            numbButton("3", "3"),

          ],
        )
      ],
    ));
  }
}
