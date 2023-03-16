Future<List<int>> fungsiPekalian(List<int> data, int pengali) async{  //fungsi yang memiliki 2 parameter bernama data dan pengali
  List<int> hasil = [];   //sebuah variabel yang menampung hasil berupa array
  await Future.forEach(data, (int item) async {
    int proses = item * pengali;
    hasil.add(proses);    //nilai dari proses dipindah ke var hasil
  });
  return hasil; //nilai dari var hasil dikembalikan
}

Future<void> main() async {
  List<int> listAngka = [2, 2, 4, 4, 6, 6];
  int pengali = 2;

  List<int> hasil = await fungsiPekalian(listAngka, pengali); //memakai var hasil dan memamnggil fungsiPerkalian
  print(hasil); //menampilkan nilai yang ada pada var hasil
}