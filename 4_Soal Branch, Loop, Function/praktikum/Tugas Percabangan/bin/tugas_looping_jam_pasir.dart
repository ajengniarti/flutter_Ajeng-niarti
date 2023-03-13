import 'dart:io';
void main() {
  int ting = 5; // tinggi piramid
  for (int i = ting; i >= 1; i--) { // loop untuk setiap baris
    for (int j = 1; j <= ting - i; j++) {
      stdout.write(" "); // mencetak spasi sesuai dengan nomor baris
    }
    for (int k = 1; k <= 2 * i - 1; k++) {
      stdout.write("*"); // mencetak bintang pada setiap baris
    }
    stdout.writeln(); // membuat baris baru setelah setiap baris
  }


  //piramid bawah
    for (int i = 1; i <=5 ; i++){
      for (int j = 1; j <=9 ; j++){
        if ( j >=6-i && j <=4+i)
        stdout.write("*");

        else
        stdout.write(" ");
      }
      print(" ");
    }
}