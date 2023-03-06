

void main() {
  int bilangan = 24; // bilangan yang ingin dicari faktornya
  List<int> faktor = []; // daftar faktor dari bilangan
  
  // mencari faktor bilangan dengan menggunakan loop
  for (int i = 1; i < bilangan; i++) {
    if (bilangan % i == 0) {
      faktor.add(i);
    }
  }
  
  // menampilkan daftar faktor bilangan
  print("Faktor dari $bilangan adalah: $faktor");
}
