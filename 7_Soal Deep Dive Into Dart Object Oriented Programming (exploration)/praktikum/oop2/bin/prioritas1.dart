class BangunRuang {
  //sebuah kelas induk yang bernama BangunRuang
  int panjang = 0;
  int lebar = 0;
  int tinggi = 0;

  BangunRuang(this.panjang, this.lebar,
      this.tinggi); //sebuah Constructor untuk menerima sebuah paramenter dari kelas BangunRuang

  int rumus() {
    //sebuah method yang bernama volume
    return panjang * lebar * tinggi;
  }
}

class Kubus extends BangunRuang {
  //sebuah kelas yang memiliki keturunan dari kelas BangunRuang
  int sisi;

  Kubus(this.sisi) : super(sisi, sisi, sisi); //Constructor
}

class Balok extends BangunRuang {
  //sebuah kelas yang memiliki keturunan dari kelas BangunRuang
  Balok(int p, int l, int t)
      : super(p, l, t); //Constructor
}

void main() {
  var kubus = Kubus(5); //nilai sisi kubus
  print('Volume Kubus yang didapat: ${kubus.rumus()}');

  var balok = Balok(6, 7, 8); // nilai panjang, lebar, tinggi untuk inputan rumus volume balok
  print('Volume Balok yang didapat: ${balok.rumus()}');
}
