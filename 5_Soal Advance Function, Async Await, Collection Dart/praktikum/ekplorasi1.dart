void main(List<String> arguments) {
  List<String> listNama = [
    "amuse",
    "tommy kaira",
    "spoon",
    "HKS",
    "litchfield",
    "amuse",
    "HKS"
  ];
  Set<String> proses = Set<String>.from(listNama);
  List<String> hasil = proses.toList();
  print(hasil);
}

// void main(List<String> arguments) {
//   var setBuah = <String>{};
//   setBuah.add('apel');
//   setBuah.add('rambutan');
//   setBuah.add('pisang');
//   print(setBuah);
// }
// {apel, rambutan, pisang}