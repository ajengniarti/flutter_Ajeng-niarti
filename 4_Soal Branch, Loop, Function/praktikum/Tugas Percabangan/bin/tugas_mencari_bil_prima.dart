import 'dart:io';

void main(){

  int nilai=12;
  bool prima = true;


  if (nilai == 0 || nilai == 1){
    prima = false;
  }else{
    for( int a = 2; a <= nilai / 2; a++){
      if (nilai % a == 0){
        prima = false;
        break;
      }
    }
  }

  if (prima){
    print("nilai $nilai adalah bilangan prima");
  } else {
    print("nilai $nilai adalah bukan bilangan prima");
  }
}