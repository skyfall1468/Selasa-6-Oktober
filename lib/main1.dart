
import 'dart:io';

void main() {
  print("Masukkan nama:");
  String nama = stdin.readLineSync() ?? "";

  double angka1;
  double angka2;

  // Input angka pertama
  while (true) {
    print("Masukkan angka pertama:");
    angka1 = double.parse(stdin.readLineSync() ?? "0");

    if (angka1 < 0) {
      print("Invalid! Masukkan angka lagi.");
    } else {
      break;
    }
  }

  // Input angka kedua
  while (true) {
    print("Masukkan angka kedua:");
    angka2 = double.parse(stdin.readLineSync() ?? "0");

    if (angka2 < 0) {
      print("Invalid! Masukkan angka lagi.");
    } else {
      break;
    }
  }

  print("Pilih operasi (+, -, *, /):");
  String operasi = stdin.readLineSync() ?? "";

  double hasil = 0;

  if (operasi == "+") {
    hasil = angka1 + angka2;
  } else if (operasi == "-") {
    hasil = angka1 - angka2;
  } else if (operasi == "*") {
    hasil = angka1 * angka2;
  } else if (operasi == "/") {
    hasil = angka1 / angka2;
  } else {
    print("Operasi tidak tersedia");
    return;
  }

  print("Nama: $nama");
  print("Hasil: $hasil");
}
