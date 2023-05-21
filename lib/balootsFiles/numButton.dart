import 'package:flutter/material.dart';
import '../sevices/constents.dart';
import "./inputFilled.dart";
import "./balootScores.dart";
import '../firstPage.dart';
import 'inputTurn.dart';
import 'package:quickalert/quickalert.dart';

void changingNumber(){

}class numbButton extends StatelessWidget {// const numbButton({Key? key}) : super(key: key);
  int myColor = 0;
  String number = "";
  String symbol;
  double width = 1;

  numbButton(this.number, this.symbol);



  numbButton.chooseColor(this.symbol, this.myColor );

  @override
  Widget build(BuildContext context) {
    return GestureDetector(

      onTap: () {

        if(symbol == "⌫"){
          if(scores.value.length>0){
            scores.value = scores.value.substring(0,scores.value.length-1);

          }
        }
        else if(symbol == "تسجيل"){


          if(scores.value == ""){
            return;
          }
          else if((ourTotal.value + int.parse(scores.value) > 999 && switcher.value)  || theirsTotal.value + int.parse(scores.value) > 999){
            QuickAlert.show(
                context: context,
                type: QuickAlertType.custom,
                barrierDismissible: false,
                confirmBtnText: 'اوبه',
                customAsset: 'assets/custom.gif',
                widget: Text("ما يمديك تسجل اكثر من 999 نقطه"));

            return;
          }
        if(switcher.value){

          oursArray.value = []..addAll(oursArray.value)..add(scores.value);

          ourTotal.value = ourTotal.value + (int.parse(scores.value));

          if(scores.value.length>0){
            scores.value = "";

          }

          switcher.value = false;
        }else{


          theirsArray.value = []..addAll(theirsArray.value)..add(scores.value);

          theirsTotal.value = theirsTotal.value + (int.parse(scores.value));

          if(scores.value.length>0){
            scores.value = "";

          }
          switcher.value = true;

        }

        if(ourTotal.value == theirsTotal.value && theirsTotal.value >151 ){

          QuickAlert.show(
            context: context,
            type: QuickAlertType.warning,

            title: "انت و الخصم تعادلتو",
              confirmBtnText: "فوووقو"
          );
        }else if((ourTotal.value > 151 || theirsTotal.value > 151) && switcher.value){

          if(theirsTotal.value > ourTotal.value ){
            QuickAlert.show(
                context: context,
                type: QuickAlertType.custom,
                barrierDismissible: false,
                confirmBtnText: 'عوافي',
                customAsset: 'assets/sad.gif',
                widget: Text("خسرتو"));
          }else if(theirsTotal.value < ourTotal.value){
            QuickAlert.show(
                context: context,
                type: QuickAlertType.custom,
                barrierDismissible: false,
                confirmBtnText: 'كفوووو',
                customAsset: 'assets/winning.gif',
                widget: Text("فزتوووو"));
          }

        }


        }
        else if(symbol == "حذف"){
          if(scores.value.length>0){
            scores.value = "";

          }

      }else if(symbol == "تراجع"){

          if(scores.value.length>0){
            scores.value = "";

          }

          int ifThereAreEqual = oursArray.value.length - theirsArray.value.length;

          if(ifThereAreEqual == 0 && oursArray.value.length == 0){ return;}
          if(ifThereAreEqual == 0){

            theirsTotal.value = theirsTotal.value - int.parse(theirsArray.value[theirsArray.value.length-1]);
            theirsArray.value.removeAt(theirsArray.value.length-1);
            theirsArray.value = []..addAll(theirsArray.value);

            ourTotal.value = ourTotal.value - int.parse(oursArray.value[oursArray.value.length-1]);
            oursArray.value.removeAt(oursArray.value.length-1);

            oursArray.value = []..addAll(oursArray.value);
            switcher.value = true;
          }else{

            ourTotal.value = ourTotal.value - int.parse(oursArray.value[oursArray.value.length-1]);
            oursArray.value.removeAt(oursArray.value.length-1);

            oursArray.value = []..addAll(oursArray.value);
            switcher.value = true;
          }

        }else if(symbol == "صكة جديده"){
       theirsArray.value.clear();
       oursArray.value.clear();
scores.value = "";
       oursArray.value = []..addAll(theirsArray.value);

       theirsArray.value = []..addAll(theirsArray.value);

       theirsTotal.value = 0;
       ourTotal.value = 0;

       switcher.value = true;
        }else{
        if(scores.value.length < 3){
          scores.value = scores.value + number;

        }
        }

      },
      child: Container(
        child: Center(
          child: Text(
            this.symbol,
            style: kKeyPad(),
            textAlign: TextAlign.center,

          ),
        ),
        width: (70 ),
        height: (70 ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            color: myColor != 0 ? Color(myColor) : Color(0xffEB1555),
            boxShadow: [
              BoxShadow(
                // color: Color(0xff8d8e98),
                spreadRadius: 1.5,
                blurRadius: 0,
                offset: Offset(1, 2),
              )
            ]),
      ),
    );
  }
}

