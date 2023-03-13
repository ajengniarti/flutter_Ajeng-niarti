void main() {
int nilai = 9;

print("Tabel perkalian $nilai");

 for (int i = 1; i <= nilai; i++) {
    String colom = "$i |";
    for (int j = 1; j <= nilai; j++) {
      colom += " ${i * j} ";
    }
    print(colom );
    print(" ");
  }
}

