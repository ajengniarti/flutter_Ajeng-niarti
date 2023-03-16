import 'dart:async';

Future<int> hitungFaktorial(int n) async {
  if (n == 0) {
    return 1;
  }
  var factorial = 1;
  for (var i = 1; i <= n; i++) {
    factorial *= i;
    await Future.delayed(Duration(milliseconds: 500)); // delay selama 500 ms
    print("$i!");
  }
  return factorial;
}

void main() async {
  var n = 5; //ganti dengan bilangan yang ingin dihitung faktorialnya
  var result = await hitungFaktorial(n);  //variabel result memanggil fungsi hitungFaktorial dan memasukan nilai faktorial
  print('Hasil faktorial dari $n! adalah $result');
}
