class Buku {
  //sebuah kelas yang berisi data tentang identitas buku
  int id;
  String judul;
  String pencipta;
  double harga;
  String kategori;

  Buku(this.id, this.judul, this.pencipta, this.harga, this.kategori);
}

class Tokobuku {
  List<Buku> data = [];

  void tambahBuku(Buku buku) {
    //method untuk tambah data buku
    data.add(buku);
  }

  void hapusBuku(int id) {
    //method untuk hapus data buku
    data.removeWhere((buku) => buku.id == id);
  }

  List<Buku> getAllBuku() {
    return data;
  }
}

void main() {
  Tokobuku t = Tokobuku(); //sebuah object untuk memanggil kelas tokobuku

  //menambahkan data buku
  Buku buku1 = Buku(1, "Suzume no Tojimari", "Makoto Shinkai", 100.000, "Fantasi Ilmiah");
  Buku buku2 = Buku(2, "Kimi no Na wa", "Makoto Shinkai", 80.000, "Romance");
  t.tambahBuku(buku1);
  t.tambahBuku(buku2);

  //menampilkan data buku yang ada
  List<Buku> semuaBuku = t.getAllBuku();
  print("Daftar Buku");
  semuaBuku.forEach((buku) {
    print(
        'ID: ${buku.id}, Judul: ${buku.judul}, Penerbit: ${buku.pencipta}, Harga: ${buku.harga}, Kategori: ${buku.kategori}');
  });

  //menghapus data buku pada id 1
  int idhapusBuku = 1;
  t.hapusBuku(idhapusBuku);

  //menampilkan daftar data buku yang terbaru
  List<Buku> daftarbukuTerbaru = t.getAllBuku();
  print("\nBuku yang sedang tersedia : ");
  daftarbukuTerbaru.forEach((buku) {
    print(
        'ID: ${buku.id}, Judul: ${buku.judul}, Penerbit: ${buku.pencipta}, Harga: ${buku.harga}, Kategori: ${buku.kategori}');
  });
}
