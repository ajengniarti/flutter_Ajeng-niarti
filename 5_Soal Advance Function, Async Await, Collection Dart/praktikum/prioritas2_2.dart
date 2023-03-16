void main(List<String> args) {

List<int> inputan = [7,5,3,5,2,1];

double rataRata = inputan.reduce((a, b) => a + b) / inputan.length;

var pembulatan = rataRata.ceil();

print(inputan);
print("Hasil dari rata-ratanya : $rataRata");
print("hasil pembulatanya adalah : $pembulatan");
}