void main() {
  List<int> nums = [10, 40, 50]; // nilai n
  for (int n in nums) {
    BigInt fact = BigInt.one; // inisialisasi faktorial dengan 1
    for (BigInt i = BigInt.one; i <= BigInt.from(n); i += BigInt.one) {
      fact *= i; // menghitung faktorial
    }
    print("Faktorial dari $n adalah $fact");
  }
}