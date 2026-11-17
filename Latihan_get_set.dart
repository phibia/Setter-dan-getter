import 'dart:io';

//LATIHAN


//===============================================================================================================

                                             //Gabungan GET AMA SET
                                             //    YANG BIASA

//===============================================================================================================

//            CONTOH 1
// void main(){
//   var topwaifus  = Waifu();
//   topwaifus.namawaifu = "NAKANO NINO";
//   print(topwaifus.tampilwaifus);
// }

// class Waifu{
//   String? _Waifus;

//   get tampilwaifus{
//     return _Waifus;
//   }

//   set namawaifu(String namawaifus){
//     _Waifus = namawaifus;
//   }
// }

//            CONTOH 2
// void main(){
//  var tampillkan = mahasiswa();
//  tampillkan.setnama = "Darly";
//  tampillkan.setnilai = 90;

//  print(tampillkan.getnama);
//  print(tampillkan.getnilai);
// }

// class mahasiswa{
//   String? _nama;
//   int? _nilai;

//   get getnama{
//     return _nama;
//   }

//   get getnilai{
//     return _nilai;
//   }

//   set setnama(String Nama){
//     _nama = Nama;
//   }

//   set setnilai(int Nilai){
//     _nilai = Nilai;
//   }
  
// }

//==========================================================================================
//NOMOR 1      (PAKAI YANG INI CIKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKK)
//                      Jenis 1: Getter biasa + Setter biasa
//==========================================================================================

// void main(){
//   var banyakbuku = buku();
//   banyakbuku.setjudul   = "DEXTER";
//   banyakbuku.sethalaman =    100;

//   print(banyakbuku.getjudul);
//   print(banyakbuku._halaman);
// }

// class buku{
// String? _judul;
// int? _halaman;

// get getjudul{
//    return _judul;
// }

// get gethalaman{
//     return _halaman;
// }

// set setjudul(String judul){
//     _judul = judul;
// }

// set sethalaman(int halaman){
//     _halaman = halaman;
// }

// }


//==========================================================================================
//NOMOR 2
//                            Jenis 2: Getter singkat (=>)
//==========================================================================================

// void main(){
//  var tampilkan = motor();
//  tampilkan.setmerek = "BUCATI";
//  tampilkan.setcc = 19000;

//  print(tampilkan.getmerek);
//  print(tampilkan.getcc);
// }

// class motor{
//     String? _merk;
//     int? _cc;

// get getmerek => _merk;
// get getcc => _cc;

// set setmerek(String Namamerek){
//     _merk = Namamerek;
// }

// set setcc(int brpcc){
//     _cc = brpcc;
// }

// }

//==========================================================================================
//NOMOR 3
//                            Jenis 3: Setter dengan validasi if
//==========================================================================================


//CONTOH KE 1
// void main(){
//   var tampilkan = suhu();

//   tampilkan.setsuhu = 50;
//   print(tampilkan.getsuhu);

//   tampilkan.setsuhu = 150;
//   print(tampilkan.getsuhu);
// }

// class suhu{
//     int _derajat = 0;

//  get getsuhu{
//     return _derajat;
//  } 

//  set setsuhu(int suhu){
//     if(suhu > 0 && suhu < 100){
//         _derajat = suhu;
//     }else{
//         print("SUHU TIDAK VALID !!");
//     }
//  }
// }

//CONTOH KE 2 (SAMA)
//
//Soal 3A (rentang, level sama)
//Buat class Diskon dengan _persen (int, awalnya 0). Setter hanya menyimpan kalau nilainya antara 0 sampai 90, selain itu tampilkan 
//"Diskon tidak valid!". Tes dengan 30 dan 95. Output: 30, pesan Diskon tidak valid!, lalu 30.


// void main(){
//  var tampilkan = diskon();
//  tampilkan.setpersen =  30;
//  print(tampilkan.getpersen);

//  tampilkan.setpersen = 95;
//  print(tampilkan.getpersen);
// }

// class diskon{
//     int _persen = 0;

//  get getpersen{
//     return _persen;
//  }

//  set setpersen(int diskons){
//     if(diskons > 0 && diskons < 90){
//         _persen = diskons;
//     }else{
//         print("Diskon Tidak Valid");
//     }
//  }
// }


//Soal 3B (satu batas saja)
//Buat class Stok dengan _jumlah (int, awalnya 0). Setter hanya menyimpan kalau jumlah tidak minus (0 ke atas),
// selain itu tampilkan "Stok tidak boleh minus!". Tes dengan 10 dan -5. Output: 10, pesan Stok tidak boleh minus!, lalu 10.

// void main(){
//  var tampilkan = stok();
//  tampilkan.setstok=  10;
//  print(tampilkan.getstok);

//  tampilkan.setstok = -5;
//  print(tampilkan.getstok);
// }

// class stok{
//     int _jumlah = 0;

//  get getstok{
//     return _jumlah;
//  }

//  set setstok(int jumlah){
//     if(jumlah> 0 ){
//         _jumlah= jumlah;
//     }else{
//         print("Stok Tidak Boleh Minus");
//     }
//  }
// }

// Soal 3B (satu batas saja)
// Buat class Stok dengan _jumlah (int, awalnya 0). Setter hanya menyimpan kalau jumlah tidak minus (0 ke atas), selain itu tampilkan "Stok tidak boleh minus!". Tes dengan 10 dan -5.
// Output: 10, pesan Stok tidak boleh minus!, lalu 10.

// Soal 3C (dua variabel, masing-masing divalidasi)
// Buat class Produk dengan _nama (String?) dan _harga (int?).

// Setter setnama: hanya menyimpan kalau nama tidak kosong (nama != ""), kalau kosong tampilkan 
// "Nama tidak boleh kosong!".Setter setharga: hanya menyimpan kalau harga 1000 ke atas, kalau tidak tampilkan 
// "Harga terlalu murah!".

// Tes dengan nama "Buku" dan harga 500.
// Output: pesan Harga terlalu murah!, lalu Buku, lalu null.

// void main() {
//   var p = Produk();

//   p.setnama = "Buku";
//   p.setharga = 500;

//   print(p.getnama);
//   print(p.getharga);
// }

// class Produk {
//   String? _nama;
//   int? _harga;

//   get getnama {
//     return _nama;
//   }

//   get getharga {
//     return _harga;
//   }

//   set setnama(String nama) {
//     if (nama != "") {
//       _nama = nama;
//     } else {
//       print("Nama tidak boleh kosong!");
//     }
//   }

//   set setharga(int harga) {
//     if (harga >= 1000) {
//       _harga = harga;
//     } else {
//       print("Harga terlalu murah!");
//     }
//   }
// }

// Soal 3D (tantangan: di luar rentang)
// Buat class Nilai dengan _skor (int, awalnya 0). Setter hanya menyimpan kalau skor antara 0 sampai 100, 
// tapi kali ini tulis kondisinya dengan cara kebalikan: tolak dulu kalau salah, baru simpan.Petunjuk: 
// pakai || (ATAU), misalnya if (skor < 0 || skor > 100).

// void main() {
//   var n = Nilai();

//   n.setskor = 80;
//   print(n.getskor);    // 80

//   n.setskor = 150;     // Skor tidak valid!
//   print(n.getskor);    // tetap 80
// }

// class Nilai {
//   int _skor = 0;

//   get getskor {
//     return _skor;
//   }

//   set setskor(int skor) {
//     if (skor < 0 || skor > 100) {
//       print("Skor tidak valid!");
//       return;
//     }
//     _skor = skor;
//   }
// }

//==========================================================================================
//NOMOR 4
//                            Jenis 4: 1 Setter untuk 2 variabel (pakai Map)
//==========================================================================================

// PAKAI MAP
//----------------------------------------------------
// void main(){
//  var tampil = pegawai();
//  tampil.setkeduantya = {"nama" : "Dexter", "gaji" : 9000000};
 
//  print(tampil.getnama);
//  print(tampil.getgaji);
// }

// class pegawai{
//     String? _nama;
//     int? _gaji;

// get getnama => _nama;
// get getgaji => _gaji;

// set setkeduantya(Map data){
//     _nama = data["nama"];
//     _gaji = data["gaji"];
// }
// }

//PAKAI LIST
//---------------------------------------------------------

// void main(){
//  var tampil = pegawai();
//  tampil.setkeduantya = ["Dexter" , 9000000];
 
//  print(tampil.getnama);
//  print(tampil.getgaji);
// }

// class pegawai{
//     String? _nama;
//     int? _gaji;

// get getnama => _nama;
// get getgaji => _gaji;

// set setkeduantya(List data){
//     _nama = data[0];
//     _gaji = data[1];
// }
// }

//1. Map yang isinya List
//----------------------------------------------------

// void main(){
//  var tampil = siswa();
//  tampil.setkeduanya = {"nama" : "Dexter", "hobi" : ["Bola", "Game", "Musik"]};

//  print(tampil.getnama);
//  print(tampil.gethobi);
// }

// class siswa{
//     String? _nama;
//     List? _hobi;

// get getnama => _nama;
// get gethobi => _hobi;

// set setkeduanya(Map data){
//     _nama = data["nama"];
//     _hobi = data["hobi"];
// }
// }

//2. List yang isinya Map
//----------------------------------------------------

// void main(){
//  var tampil = kantor();
//  tampil.setpegawai = [
//    {"nama" : "Dexter", "gaji" : 9000000},
//    {"nama" : "Budi", "gaji" : 5000000},
//  ];

//  print(tampil.getpegawai[0]["nama"]);
//  print(tampil.getpegawai[1]["gaji"]);
// }

// class kantor{
//     List? _pegawai;

// get getpegawai => _pegawai;

// set setpegawai(List data){
//     _pegawai = data;
// }
// }

//1. for + input pengguna + Setter validasi
//----------------------------------------------



// void main(){

//   //Dengan Inputan Pengguna
//   //Getter & Setter
//  var laptop1 = kelususan();

//  for(int i = 1; i <= 3; i++){
//    stdout.write("Masukan Nilai Anda Diatas 50 = ");
//    int masuk = int.parse(stdin.readLineSync()!);
//    laptop1.nilai = masuk;
//    print(laptop1.tuntas);
//  }
// }

// class kelususan{
//   int _nilai = 0;

//   //getter singkat
//   int get tuntas => _nilai;

//   //Setter dengan Validasi
//   set nilai(int tuntas){
//     if(tuntas >= 50 ){
//       _nilai = tuntas;
//     }else{
//       print("Tidak Memenuhi Syarat Bujang!!");
//     }
//   }
// }

//2. for + Map + List (nyimpen banyak data)
//----------------------------------------------
// void main(){

//  //Dengan Inputan Pengguna
//  //Getter & Setter + for
//  var tampil = pegawai();

//  for(int i = 1; i <= 3; i++){
//    stdout.write("Masukan Nama = ");
//    String nama = stdin.readLineSync()!;

//    stdout.write("Masukan Gaji (minimal 1000000) = ");
//    int gaji = int.parse(stdin.readLineSync()!);

//    tampil.setkeduanya = {"nama" : nama, "gaji" : gaji};
//  }

//  print("--- Data Tersimpan ---");
//  for(var x in tampil.getdata){
//    print("${x["nama"]} = ${x["gaji"]}");
//  }
// }

// class pegawai{
//     List _data = [];

// //getter singkat
// get getdata => _data;

// //Setter dengan Validasi
// set setkeduanya(Map isi){
//     if(isi["gaji"] >= 1000000){
//         _data.add(isi);
//     }else{
//         print("Gaji Terlalu Kecil Bujang!!");
//     }
// }
// }

//==========================================================================================
//NOMOR 5
//                             Jenis 5: Input pengguna ke Setter
//==========================================================================================
// Soal 5 (Gabungan: input pengguna + validasi + getter singkat)
// Buat class `Ujian` dengan `_nilai`. Minta input nilai dari pengguna. 
// Setter menyimpan hanya kalau nilai 0 sampai 100, kalau salah tampilkan `"Nilai tidak valid!"`.
//  Getter pakai `=>`. Jangan lupa `import 'dart:io';`.

import 'dart:io';

void main() {
  var u = Ujian();

  stdout.write("Masukkan nilai = ");
  int masuk = int.parse(stdin.readLineSync()!);
  u.setnilai = masuk;

  print(u.getnilai);
}

class Ujian {
  int _nilai = 0;

  get getnilai => _nilai;

  set setnilai(int nilai) {
    if (nilai >= 0 && nilai <= 100) {
      _nilai = nilai;
    } else {
      print("Nilai tidak valid!");
    }
  }
}