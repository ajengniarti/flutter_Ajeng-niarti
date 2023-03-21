class Calculator {
  int penjumlahan(int a, int b) {
    return a + b;
  }

  int pengurangan(int a, int b) {
    return a - b;
  }

  int perkalian(int a, int b) {
    return a * b;
  }

  double pembagian(int a, int b) {
    return a / b;
  }
}

void main() {
Calculator calculator = Calculator();

int result1 = calculator.penjumlahan(5, 10); // result1 = 15
int result2 = calculator.pengurangan(5, 5); // result2 = 5
int result3 = calculator.perkalian(6, 2); // result3 = 50
double result4 = calculator.pembagian(20, 2); // result4 = 2.0

print("Operator penjumlahan a = 5 dan b = 10, Hasil $result1.");
print("Operator pengurangan a = 5 dan b = 5, Hasil $result2.");
print("Operator perkalian a = 6 dan b = 2, Hasil $result3.");
print("Operator pembagian a = 20 dan b = 2, Hasil $result4.");
}