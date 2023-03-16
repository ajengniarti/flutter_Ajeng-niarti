Map<String, int> banyak = {};

List<String> listData = [
    'js',
    'js',
    'js',
    'golang',
    'python',
    'js',
    'js',
    'golang',
    'rust'
  ];

void main() {
  for (var item in listData) {
    if (banyak.containsKey(item)) {
      banyak[item] = banyak[item]! + 1;
    } else {
      banyak[item] = 1;
    }
  }
  print(banyak);
}