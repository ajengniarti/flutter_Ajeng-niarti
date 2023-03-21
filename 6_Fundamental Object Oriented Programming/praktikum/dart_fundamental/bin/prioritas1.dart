class Hewan {                   //sebuah kelas yang berisi property kriteria hewan
  String nama = "Hewan";
  int beratHewan = 0;
}

// ignore: camel_case_types
class sapi extends Hewan {      //sebuah kelas inheritance dari kelas hewan
  sapi() {
    nama = "sapi";
    beratHewan = 30;
  }
}

class Ikan extends Hewan {       //sebuah kelas inheritance dari kelas hewan
  Ikan() {
    nama = "Ikan";
    beratHewan = 5;
  }
}

class Kerbau extends Hewan {      //sebuah kelas inheritance dari kelas hewan
  kerbau() {
    nama = "Kerbau";
    beratHewan = 15;
  }
}

class Mobil {                       // sebuah kelas yang bernama Mobil
  int kapasitas= 100;
  void tambahMuatan() {             //  sebuah method yang melakukan fungsi print Masih ada tempat kosong
    print("Masih ada tempat kosong");
  }
}

void main(List<String> args) {
  var he1 = sapi();         //m
  var he2 = Ikan();
  var he3 = Kerbau();
  var m = Mobil();

  if ((he1.beratHewan + he2.beratHewan + he3.beratHewan) < m.kapasitas) {
    m.tambahMuatan();
    print("list hewan : ${he1.nama}, ${he2.nama}, ${he3.nama}");
  } else {
    print("sudah penuh");
  }
}
