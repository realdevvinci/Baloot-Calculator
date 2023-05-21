import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../sevices/constents.dart';


ValueNotifier<List<String>> theirsArray = ValueNotifier<List<String>>([]);

ValueNotifier<List<String>> oursArray = ValueNotifier<List<String>>([]);
// void testing(){
//
//   for(int i = 0 ; i< oursArray.length ; i++){
//     myWidget.add(oursArray[i]);
//
//   }
// }
class scorelist extends StatefulWidget {
  const scorelist({Key? key}) : super(key: key);

  @override
  State<scorelist> createState() => _scorelistState();
}

class _scorelistState extends State<scorelist> {



  @override
  Widget build(BuildContext context) {


    return Expanded(
      child: Container(

        width: double.infinity,
        margin: EdgeInsets.symmetric(vertical: 0, horizontal: 15),
 
        decoration:BoxDecoration(

          boxShadow: [
            BoxShadow(
              color: Color(0xff111328),

            ),
            // BoxShadow(
            //   color: Colors.white,
            //   spreadRadius: 3.0,
            //   blurRadius: 10.0,
            // ),
          ],
          borderRadius: BorderRadius.vertical(top:Radius.circular(7)),
        ),
        child: Row(
          children: [  Expanded(
            child: ValueListenableBuilder(
              builder: (context, n, c) {
                WidgetsBinding.instance.addPostFrameCallback((_) => _scrollToBottom());

                return  ListView(

                  physics: BouncingScrollPhysics(),

                  children: theirsArray.value.map((e) => Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [Row(children: [ Text(e, style: kTextScoresStyler())]),SizedBox(height: 40 ,)]
                  )).toList() ,   controller: _scrollController,
                  /*[Row(mainAxisAlignment: MainAxisAlignment.spaceAround,children: [ , Text("00 + 8", style: kTextScoresStyler())]),SizedBox(height: 15,),Row(mainAxisAlignment: MainAxisAlignment.spaceAround,children: [Text("00 + 18", style: kTextScoresStyler()) , Text("00 + 8", style: kTextScoresStyler())],)],*/
                );
              },
              valueListenable: theirsArray,
            ),
          ),Expanded(
            child: ValueListenableBuilder(
              builder: (context, n, c) {
                WidgetsBinding.instance.addPostFrameCallback((_) => _scrollToBottom2());

                return ListView(
                    physics: BouncingScrollPhysics(),
                    children: oursArray.value.map((e) => Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: [Row(children: [ Text(e, style: kTextScoresStyler())]),SizedBox(height: 40,)]
                    )).toList(),                controller: _scrollController2,

                  /*[Row(mainAxisAlignment: MainAxisAlignment.spaceAround,children: [ , Text("00 + 8", style: kTextScoresStyler())]),SizedBox(height: 15,),Row(mainAxisAlignment: MainAxisAlignment.spaceAround,children: [Text("00 + 18", style: kTextScoresStyler()) , Text("00 + 8", style: kTextScoresStyler())],)],*/
                );
              },
              valueListenable: oursArray,
            ),
          ) ,

           ],
        )




      ),
    );
  }
}

ScrollController _scrollController = ScrollController();

_scrollToBottom() {
  _scrollController.jumpTo(_scrollController.position.maxScrollExtent);
}


ScrollController _scrollController2 = ScrollController();

_scrollToBottom2() {
  _scrollController2.jumpTo(_scrollController2.position.maxScrollExtent);
}