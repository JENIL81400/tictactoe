import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tictactoe/getclass.dart';
import 'package:tictactoe/sizedata.dart';

void main() {
  runApp( MaterialApp(home: tictactoe(),));
}
class tictactoe extends StatefulWidget {


  @override
  _tictactoeState createState() => _tictactoeState();
}
class _tictactoeState extends State<tictactoe> {

  // String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8="",s9="";
  // int t=0;
  // int o=0;
  // int x=0;
  // String turn="o",win="";
  //
  // resetgame()
  // {
  //   setState(() {
  //     s1="";s2="";s3="";s4="";s5="";s6="";s7="";s8="";s9="";
  //     t=0;o=0;x=0;
  //     turn="o";win="";
  //   });
  // }
  // wincheck()
  // {
  //   setState(() {
  //     if((s1=="o" && s2=="o" && s3=="o") ||
  //         (s1=="o" && s4=="o" && s7=="o")||
  //         (s1=="o" && s5=="o" && s9=="o")||
  //         (s2=="o" && s5=="o" && s8=="o")||
  //         (s3=="o" && s6=="o" && s9=="o")||
  //         (s3=="o" && s5=="o" && s7=="o")||
  //         (s4=="o" && s5=="o" && s6=="o")||
  //         (s7=="o" && s8=="o" && s9=="o")
  //     )
  //     {
  //       win="o is win";
  //     }
  //     if((s1=="x" && s2=="x" && s3=="x") ||
  //         (s1=="x" && s4=="x" && s7=="x")||
  //         (s1=="x" && s5=="x" && s9=="x")||
  //         (s2=="x" && s5=="x" && s8=="x")||
  //         (s3=="x" && s6=="x" && s9=="x")||
  //         (s3=="x" && s5=="x" && s7=="x")||
  //         (s4=="x" && s5=="x" && s6=="x")||
  //         (s7=="x" && s8=="x" && s9=="x")
  //     )
  //     {
  //       win="x is win";
  //     }
  //   });
  // }

  @override
  Widget build(BuildContext context) {

    sizedata(context);

    getxclass g=Get.put(getxclass());
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black,
        title: Text("Tictactoe"),),
      body: Container(
        width: sizedata.width,
        height: sizedata.height,
        color: Colors.brown,
        child: Column(
          children: [
            Container(
              height: 50,
              width: 500,
              child: Text("TicTacToe",
              style: TextStyle(fontFamily: "",fontSize: 25),),
              alignment: Alignment.center,
              color: Colors.white70,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  alignment: Alignment.center,
                  height: sizedata.width! /5,
                  width: sizedata.width! /5,
                  child: Column(
                    children: [
                      Text("o",
                      style: TextStyle(fontFamily: "", fontSize: 35, color: Colors.white),
                      ),
                      Obx(
                            () => Text(
                          "${g.o.value} TIME",
                          style:
                          TextStyle(color: Colors.black, fontSize: 20),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  height: sizedata.width! /5,
                  width: sizedata.width! /5,
                  child: Column(
                    children: [
                      Text("x",
                        style: TextStyle(fontFamily: "", fontSize: 35, color: Colors.white,),
                      ),
                      Obx(
                            () => Text(
                          "${g.x.value} TIME",
                          style:
                          TextStyle(color: Colors.black, fontSize: 20),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  height: sizedata.width! /5,
                  width: sizedata.width! /5,
                  child: Column(
                    children: [
                      Icon(
                        Icons.person_rounded,color: Colors.white,
                        size: 40,
                      ),
                      Obx(
                            () => Text(
                          "${g.player.value} Player",
                          style:
                          TextStyle(color: Colors.black, fontSize: 20),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                InkWell(
                  child: Container(
                    width: sizedata.width!*0.3,
                    height: sizedata.width!*0.3,
                    color: Colors.grey,
                    margin: EdgeInsets.all(5),
                    alignment: Alignment.center,
                    child:  Obx(
                          () => Text(
                            g.s1.value, style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                          ),
                    )
            ), onTap: g.s1 == ""
                    ? () {g.turn(1);
                    g.wincheck();
                  }: null,
                ),
                InkWell(
                  child: Container(
                    width: sizedata.width!*0.3,
                    height: sizedata.width!*0.3,
                    color: Colors.grey,
                    margin: EdgeInsets.all(5),
                    alignment: Alignment.center,
                      child:  Obx(
                            () => Text(
                          g.s2.value, style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                        ),
                      )
                  ),
                    onTap: g.s2 == ""
                        ? () {g.turn(2);
                    g.wincheck();
                    }: null ,

                ),
                InkWell(
                  child: Container(
                    width: sizedata.width!*0.3,
                    height: sizedata.width!*0.3,
                    color: Colors.grey,
                    margin: EdgeInsets.all(5),
                    alignment: Alignment.center,
                      child:  Obx(
                            () => Text(
                          g.s3.value, style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                        ),
                      )
                  ),
                  onTap: g.s3 == ""
                      ? () {g.turn(3);
                  g.wincheck();
                  }: null ,
                ),
              ],
            ),
            Row(
              children: [
                InkWell(
                  child: Container(
                    width: sizedata.width!*0.3,
                    height: sizedata.width!*0.3,
                    color: Colors.grey,
                    margin: EdgeInsets.all(5),
                    alignment: Alignment.center,
                      child:  Obx(
                            () => Text(
                          g.s4.value, style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                        ),
                      )
                  ),
                  onTap: g.s4 == ""
                      ? () {g.turn(4);
                  g.wincheck();
                  }: null ,
                ),
                InkWell(
                  child: Container(
                    width: sizedata.width!*0.3,
                    height: sizedata.width!*0.3,
                    color: Colors.grey,
                    margin: EdgeInsets.all(5),
                    alignment: Alignment.center,
                      child:  Obx(
                            () => Text(
                          g.s5.value, style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                        ),
                      )
                  ),
                  onTap: g.s5 == ""
                      ? () {g.turn(5);
                  g.wincheck();
                  }: null ,
                ),
                InkWell(
                  child: Container(
                    width: sizedata.width!*0.3,
                    height: sizedata.width!*0.3,
                    color: Colors.grey,
                    margin: EdgeInsets.all(5),
                    alignment: Alignment.center,
                      child:  Obx(
                            () => Text(
                          g.s6.value, style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                        ),
                      )
                  ),
                  onTap: g.s6 == ""
                      ? () {g.turn(6);
                  g.wincheck();
                  }: null ,
                ),
              ],
            ),
            Row(
              children: [
                InkWell(
                  child: Container(
                    width: sizedata.width!*0.3,
                    height: sizedata.width!*0.3,
                    color: Colors.grey,
                    margin: EdgeInsets.all(5),
                    alignment: Alignment.center,
                      child:  Obx(
                            () => Text(
                          g.s7.value, style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                        ),
                      )
                  ),
                  onTap: g.s7 == ""
                      ? () {g.turn(7);
                  g.wincheck();
                  }: null ,
                ),
                InkWell(
                  child: Container(
                    width: sizedata.width!*0.3,
                    height: sizedata.width!*0.3,
                    color: Colors.grey,
                    margin: EdgeInsets.all(5),
                    alignment: Alignment.center,
                      child:  Obx(
                            () => Text(
                          g.s8.value, style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                        ),
                      )
                  ),
                  onTap: g.s8 == ""
                      ? () {g.turn(8);
                  g.wincheck();
                  }: null ,
                ),
                InkWell(
                  child: Container(
                    width: sizedata.width!*0.3,
                    height: sizedata.width!*0.3,
                    color: Colors.grey,
                    margin: EdgeInsets.all(5),
                    alignment: Alignment.center,
                      child:  Obx(
                            () => Text(
                          g.s9.value, style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                        ),
                      )
                  ),
                  onTap: g.s9 == ""
                      ? () {g.turn(9);
                  g.wincheck();
                  }: null ,
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(padding: EdgeInsets.only(top: 50)),
                IconButton(
                    onPressed: () {
                      // g.resetgame();
                      setState(() {
                        g.resetgame();
                      });
                    },
                    icon: Icon(Icons.refresh)),
                Obx(() => Text(
                  "Winner : ${g.winner.value}",
                  style: TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                )),
              ],
            ),
          ],
        ),
      ),
    );
  }
  void _showDrawDialog() {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Draw"),
            actions: [
              FlatButton(
                child: Text("Play Again"),
                onPressed: () {
                  setState(() {
                    g.resetgame();
                    Navigator.of(context).pop();
                  });
                },
              )
            ],
          );
        });
  }

}
