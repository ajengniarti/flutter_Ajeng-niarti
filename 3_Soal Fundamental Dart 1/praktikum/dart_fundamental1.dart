import 'package:dart_fundamental1/dart_fundamental1.dart' as dart_fundamental1;
import 'package:test/test.dart';

void main(){
  String kalimat ="mobil balap";

  String hapusSpesialChar = 
    kalimat.toLowerCase().replaceAll(RegExp('[^a-z]'), '');

  
  List<String> reverseKalimat = hapusSpesialChar.split('').reversed.toList();
  String kalimatReversed = reverseKalimat.join();


  String result = (hapusSpesialChar == kalimatReversed) ? "Palindrome" : "Not Palindrome";
  print(result);
}
