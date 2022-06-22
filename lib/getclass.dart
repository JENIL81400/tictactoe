

import 'package:get/get.dart';

class getxclass extends GetxController
{
  RxString  s1="".obs,s2="".obs,s3="".obs,
      s4="".obs,s5="".obs,s6="".obs,s7="".obs,s8="".obs,s9="".obs;

  RxInt t=0.obs;
  RxInt o=0.obs;
  RxInt x=0.obs;
  RxInt player =1.obs;
  RxString win="".obs;
  RxString winner = "".obs;

  turn(int l){
    if(l==1) {
      if (s1.value == "") {
        if (t % 2 == 0) {
          s1.value = "o";
          o++;
          player.value = 2;
        }
        else {
          s1.value = "x";
          x++;
          player.value = 1;
        }
        t++;
      }
    }
    if(l==2){
      if (s2.value == "") {
      if(t % 2 == 0){
        s2.value="o";
        o++;
        player.value=2;
      }
      else{
        s2.value="x";
        x++;
        player.value=1;
      }
      t++;
    }}
    if(l==3){
      if (s3.value == "") {
      if(t % 2 == 0){
        s3.value="o";
        o++;
        player.value=2;
      }
      else{
        s3.value="x";
        x++;
        player.value=1;
      }
      t++;
    }}
    if(l==4){
      if (s4.value == "") {
      if(t % 2 == 0){
        s4.value="o";
        o++;
        player.value=2;
      }
      else{
        s4.value="x";
        x++;
        player.value=1;
      }
      t++;
    }}
    if(l==5) {
      if (s5.value == "") {
        if (t % 2 == 0) {
          s5.value = "o";
          o++;
          player.value = 2;
        }
        else {
          s5.value = "x";
          x++;
          player.value = 1;
        }
        t++;
      }
    }
    if(l==6) {
      if (s6.value == "") {
        if (t % 2 == 0) {
          s6.value = "o";
          o++;
          player.value = 2;
        }
        else {
          s6.value = "x";
          x++;
          player.value = 1;
        }
        t++;
      }
    }
    if(l==7) {
      if (s7.value == "") {
        if (t % 2 == 0) {
          s7.value = "o";
          o++;
          player.value = 2;
        }
        else {
          s7.value = "x";
          x++;
          player.value = 1;
        }
        t++;
      }
    }
    if(l==8){
      if (s8.value == "") {
      if(t % 2 == 0){
        s8.value="o";
        o++;
        player.value=2;
      }
      else{
        s8.value="x";
        x++;
        player.value=1;
      }
      t++;
    }}
    if(l==9){
      if (s9.value == "") {
      if(t % 2 == 0){
        s9.value="o";
        o++;
        player.value=2;
      }
      else{
        s9.value="x";
        x++;
        player.value=1;
      }
      t++;
    }}
  }

  wincheck() {
    if ((s1 == "o" && s2 == "o" && s3 == "o") ||
        (s4 == "o" && s5 == "o" && s6 == "o") ||
        (s7 == "o" && s8 == "o" && s9 == "o") ||
        (s1 == "o" && s4 == "o" && s7 == "o") ||
        (s2 == "o" && s5 == "o" && s8 == "o") ||
        (s3 == "o" && s6 == "o" && s9 == "o") ||
        (s1 == "o" && s5 == "o" && s9 == "o") ||
        (s3 == "o" && s5 == "o" && s7 == "o")) {
      winner.value = "o is winner";
    } else if ((s1 == "x" && s2 == "x" && s3 == "x") ||
        (s4 == "x" && s5 == "x" && s6 == "x") ||
        (s7 == "x" && s8 == "x" && s9 == "x") ||
        (s1 == "x" && s4 == "x" && s7 == "x") ||
        (s2 == "x" && s5 == "x" && s8 == "x") ||
        (s3 == "x" && s6 == "x" && s9 == "x") ||
        (s1 == "x" && s5 == "x" && s9 == "x") ||
        (s3 == "x" && s5 == "x" && s7 == "x")) {
      winner.value = "x is winner";
    }
  }

  resetgame() {
    s1 = "".obs;
    s2 = "".obs;
    s3 = "".obs;
    s4 = "".obs;
    s5 = "".obs;
    s6 = "".obs;
    s7 = "".obs;
    s8 = "".obs;
    s9 = "".obs;
    winner.value = "";
    player.value = 0;
    o = 0.obs;
    x = 0.obs;
    // o.value=0;
    // x.value=0;
  }

}