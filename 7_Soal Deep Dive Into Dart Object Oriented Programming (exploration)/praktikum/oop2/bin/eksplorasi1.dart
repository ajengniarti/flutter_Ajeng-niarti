abstract class Bentuk {       //class Bentuk menjadi kelas induk yang berisi 2 method
  double getArea();       // method getArea yang nanti akan menampung proses mencari luas
  double getPrimeter();  // method getPrimeter yang nanti akan menampung proses mencari keliling
}

class Lingkaran implements Bentuk {       //class Lingkaran yang memiliki keturunan pada class Bentuk
  double radius=0;

  Lingkaran(this.radius);

  @override
  double getArea(){
    return 3.14 * radius * radius;

  }
  @override
  double getPrimeter(){
    return 2 * radius;
  }
}



  class Persegi implements Bentuk{        //class Persegi yang memiliki keturunan pada class Bentuk
  double sisi = 0;

  Persegi(this.sisi);

  @override
  double getArea(){
    return sisi * sisi;
  }

  @override
  double getPrimeter(){
    return 4 * sisi;
  }
}

class PersegiPanjang implements Bentuk {       //class Persegi Panjang yang memiliki keturunan pada class Bentuk
  double panjang = 0 ;
  double lebar = 0;

  PersegiPanjang(this.panjang, this.lebar);

  @override
  double getArea(){
    return 2 * (panjang * lebar);
  }

  @override
  double getPrimeter() {
    return 2 * (panjang + lebar);
  }
}

void main(List<String> args) {
  var lingkaran = Lingkaran(7);
  var persegi = Persegi(3);
  var persegiPanjang = PersegiPanjang(5, 3);

  print("LUAS DAN KELILING LINGKARAN DENGAN RADIUS 7");
  print("Luas : ${lingkaran.getArea()}");
  print("Keliling : ${lingkaran.getPrimeter()}");

  print("\nLUAS DAN KELILING PERSEGI DENGAN SISI 3");
  print("Luas : ${persegi.getArea()}");
  print("Keliling : ${persegi.getPrimeter()}");

  print("\nLUAS DAN KELILING PERSEGI PANJANG DENGAN PANJANG 5 DAN LEBAR 3");
  print("Luas : ${persegiPanjang.getArea()}");
  print("Keliling : ${persegiPanjang.getPrimeter()}");
}