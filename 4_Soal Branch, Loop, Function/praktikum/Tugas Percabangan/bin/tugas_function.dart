import 'dart:math';

double hitungLuasLingkaran(double jariJari) {
  return pi * pow(jariJari, 2);
}

void main() {
  double jariJari = 5;
  double luas = hitungLuasLingkaran(jariJari);
  print('Luas lingkaran dengan jari-jari $jariJari adalah $luas');
}