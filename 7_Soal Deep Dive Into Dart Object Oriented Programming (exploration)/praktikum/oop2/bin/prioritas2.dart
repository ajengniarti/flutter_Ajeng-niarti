class Matematika {
  late int hasil;

  int rumusKPK(int a, int b) {
    int max = a > b ? a : b;

    while (true) {
      if (max % a == 0 && max % b == 0) {
        return max;
      }
      max++;
    }
  }

  int rumusFPB(int a, int b) {
    if (b == 0) {
      return a;
    }
    return rumusFPB(b, a % b);
  }
}

void main() {
  Matematika matematika = new Matematika();
  int a = 30;
  int b = 20;

  int final_kpk = matematika.rumusKPK(a, b);
  int final_fpb = matematika.rumusFPB(a, b);
  print('Hasil nilai kpk dari $a dan $b adalah $final_kpk');
  print('Hasil nilai fpb dari $a dan $b adalah $final_fpb');
}
