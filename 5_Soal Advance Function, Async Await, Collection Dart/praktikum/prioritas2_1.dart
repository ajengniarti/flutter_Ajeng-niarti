void main() {

List<dynamic> listNama = [ //list mengunakan dynamic karena memiliki 2 type data
  ["Agung", 3],
  ["Ajenng", 2],
  ["Rudi", 1]
  ];

  Map<String, int> mapName = {}; //mebuat fungsi map dengan nama mapName

  // ignore: avoid_function_literals_in_foreach_calls
  listNama.forEach((index) {    //mengambil data pada list menggunakan foreach
    mapName[index[0]] = index[1];   //mengambil data menggunakan fungsi map
  });

  print(mapName); // menampilkan hasil dari fungsi mapName
}

