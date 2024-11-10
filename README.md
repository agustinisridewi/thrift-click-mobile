# Thrift Click Mobile
Agus Tini Sridewi - PBP C - 2306276004
<details>
<summary>Tugas 7</summary>

## Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.
**Stateless widget** adalah jenis widget yang tidak memiliki status internal yang bisa berubah setelah pertama kali dirender. Artinya, tampilan dan perilaku dari widget ini tetap konstan selama aplikasi berjalan, tanpa dipengaruhi oleh interaksi pengguna atau perubahan data. Karena, sifatnya yang statis, `stateless widget` sangat cocok digunakan untuk elemen yang hanya perlu ditampilkan satu kali dan tidak akan berubah. Contohnya seperti `Text`, `Icon`, `Image`, `Container`, yang tidak interaktif dan tidak memerlukan pembaruan tampilan.
**Stateful Widget** adalah jenis widget yang memiliki state atau keadaan yang dapat berubah seiring waktu. Karena status internalnya yang dapat berubah, widget ini biasanya digunakan untuk elemen yang dinamis, misalnya tombol yang bisa mengubah warna atau elemen UI yang responsif terhadap input pengguna. Widget ini dapat diperbaharui kapan saja jika statusnya berubah dengan `setState()`. Conthnya seperti `Checkbox`, `Slider`, `TextField`, dan lain-lain.

## Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.
Pada proyek ini, saya menggunakan beberapa widget utama dengan fungsi-fungsi berikut:
1. **Text**: Menampilkan teks pada layar. Widget ini digunakan untuk menyampaikan informasi atau sebagai label dari komponen lain.
2. **Icon**: Menampilkan ikon yang memberikan visualisasi tambahan atau simbol yang memudahkan pengguna memahami fungsi tertentu pada aplikasi.
3. **Column**: Mengatur tata letak komponen secara vertikal. Widget ini memungkinkan saya menyusun beberapa widget di atas dan di bawah satu sama lain.
4. **Row**: Mengatur tata letak komponen secara horizontal, sehingga widget yang berada di dalamnya tersusun dari kiri ke kanan.
Dalam proyek ini, digunakan untuk membuat tiga tombol (Lihat Daftar Produk, Tambah Produk, dan Logout) yang dapat merespon interaksi pengguna.
5. **SnackBar** : Menampilkan pesan singkat sementara di bagian bawah layar untuk menginformasikan sesuatu kepada pengguna. Dalam proyek ini, Snackbar muncul saat tombol ditekan, memberikan notifikasi seperti `Kamu telah menekan tombol Lihat Daftar Produk`.
6. **SizedBox** : Menyediakan ruang kosong di antara widget. Dalam proyek ini, `SizedBox` digunakan untuk memberi jarak vertikal antara komponen, seperti antara teks sambutan dan grid item.
7. **Padding** : Menambahkan ruang di sekitar widget untuk tata letak yang lebih rapi dan enak dilihat. Digunakan untuk mengatur jarak di sekitar `GridView`, `Text`, dan `Card`
8. **Center** : Menempatkan widget di tengah layar. `Center` digunakan untuk membuat teks dan tombol berada di tengah halaman, meningkatkan keterbacaan dan estetika tampilan.
9. **InkWell** : Memberikan efek _ripple_ saat widget ditekan dan mengatur aksi ketika ditekan. Di proyek ini, `InkWell` membungkus `ItemCard` sehingga kartu produk bereaksi saat pengguna mengetuknya dan menampilkan pesan `SnackBar`.
10. **GridView** : Membuat tampilan grid dengan sejumlah kolom dan baris yang ditentukan. `GridView.count` digunakan di sini untuk menampilkan tombol-tombol (seperti `Lihat Daftar Produk`, `Tambah Produk`, dan `Logout`) dalam grid tiga kolom.
11. **Card** : Memberikan tampilan kotak dengan bayangan untuk membungkus elemen UI, biasanya untuk menyusun informasi penting dalam bentuk kartu. `Card` di proyek ini digunakan untuk menampilkan informasi seperti NPM, nama, dan kelas.
**MaterialApp** : Root widget aplikasi Flutter kita yang menyediakan konfigurasi tema, pengaturan routing, dan beberapa fitur lain. Dalam proyek kali ini, `MaterialApp` mengatur judul aplikasi dan tema dasar untuk keseluruhan tampilan aplikasi.
12. **Scaffold** : Menyediakan struktur halaman dasar dengan `AppBar` pada bagian atas aplikasi, `body` sebagai wadah konten, dan komponen dasar lainnya. Dalam aplikasi ini, `Scaffold` digunakan untuk membuat kerangka utama setiap halaman, termasuk halaman beranda dengan tombol-tombol interaktif.
13. **AppBar** : Merupakan bilah judul yang ditempatkan di bagian atas layar, biasanya digunakan untuk menampilkan judul halaman atau tombol navigasi. Pada aplikasi ini, `AppBar` digunakan untuk menampilkan judul aplikasi.

Di proyek ini juga terdapat widget custom seperti `InfoCard`, `ItemHomepage`, dan `ItemCard`

## Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
Dalam Flutter, fungsi setState() digunakan khusus pada StatefulWidget untuk memberi tahu bahwa ada perubahan pada data atau status widget, sehingga tampilan (UI) perlu diperbarui. Saat setState() dijalankan, Flutter akan memproses ulang fungsi build dari widget tersebut, yang memungkinkan tampilan menyesuaikan perubahan data secara langsung di layar. Dengan cara ini, aplikasi dapat merespons dengan cepat terhadap perubahan data atau interaksi pengguna.

Variabel-variabel yang terdampak oleh setState() adalah yang mengalami perubahan nilai dan didefinisikan dalam kelas State dari StatefulWidget. Misalnya, dalam proyek mental_health_tracker saat pertama kali dibuat, terdapat variabel counter, yang nilainya meningkat tiap kali tombol ditekan. Dalam kasus ini, setState() dipanggil setiap kali nilai counter berubah, sehingga UI selalu menampilkan angka terbaru. Contoh lain adalah String username = '' yang diperbarui seiring pengguna mengetik pada formulir, atau List<String> items = [] untuk daftar produk yang dapat diperbarui saat item ditambah atau dihapus.

Di proyek ini, tidak ada variabel yang dipengaruhi oleh setState() karena semua widget bersifat stateless. Namun, jika di masa mendatang ada fitur yang membutuhkan pembaruan tampilan saat data berubah, kita mungkin akan mempertimbangkan untuk menambahkan StatefulWidget, sehingga fungsi setState() dapat digunakan untuk menampilkan perubahan data pada UI.

## Jelaskan perbedaan antara const dengan final.
**const** digunakan untuk nilai yang bersifat konstan pada waktu kompilasi. Artinya, nilai tersebut harus sudah diketahui dan tidak boleh berubah selama eksekusi aplikasi. Contoh, const digunakan untuk widget atau nilai yang tidak akan pernah berubah.

**final** digunakan untuk nilai yang tetap setelah diberikan, tetapi nilainya dapat diketahui saat runtime, bukan hanya saat kompilasi. Contoh, objek yang diambil dari API bisa menggunakan final karena nilai tersebut akan tetap setelah diinisialisasi, namun diperoleh saat runtime.

## Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas.
1. **Membuat Flutter Project dengan nama **azka_vogue** untuk mobile**
   ```dart
   flutter create azka_vogue
   ```
   
2. **Masuk ke direktori Flutter Project**
   ```dart
    cd azka_vogue
   ```
   
3.  **Membuat file baru bernama `menu.dart` pada direktori `azka_vogue/lib`**
   - Pada langkah ini, di dalam direktori `azka_vogue/lib` akan berisi 2 file, `main.dart` yang berfungsi sebagai layout utama aplikasi, dan `menu.dart` yang digunakan untuk menyimpan dan mengelola data menu yang akan ditampilkan di halaman utama aplikasi. Disini, saya juga memindahkan class `MyHomePage` dan `_MyHomePageState` dari file `main.dart` ke `menu.dart`.
     
4. **Membuat Widget Sederhana pada Flutter**
   - Mengubah Tema Warna aplikasi
      ```dart
      colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.pink,
        ).copyWith(secondary: const Color(0xFFBF360C)),
      ```
   - Mengubah Sifat Widget Halaman Menu Menjadi Stateless
     - Hapus `const MyHomePage(title: 'Flutter Demo Home Page')` menjadi `MyHomePage();`
     -  Menghapus seluruh kelas `MyHomePage` dan `_MyHomePageState`, dan buat `MyHomePage` baru yang meng-_extend_ `Stateless Widget`
       ```dart
      class MyHomePage extends StatelessWidget {
        MyHomePage({super.key});
    
        @override
        Widget build(BuildContext context) {
          return Scaffold(
      
          );
        }
      }
      ```
   - Membuat class baru bernama `InfoCard` pada berkas `menu.dart` yang akan menampilkan informasi _NPM_, _nama_, dan _kelas_.
     - Deklarasikan tiga variabel tersebut pada class `MyHomePage` di `menu.dart`
      ```dart
       final String npm = '2306276004'; // NPM
       final String name = 'Agus Tini Sridewi'; // Nama
       final String className = 'PBP C'; // Kelas
      ```
     - Buat class nya 
     ```dart
      class InfoCard extends StatelessWidget {
      // Kartu informasi yang menampilkan title dan content.
    
      final String title;  // Judul kartu.
      final String content;  // Isi kartu.
    
      const InfoCard({super.key, required this.title, required this.content});
    
      @override
      Widget build(BuildContext context) {
        ...
      }
     ```
    
    - Membuat `Button Card` Sederhana dengan `Icon`
       - Membuat class baru bernama `ItemHomepage`
          ```dart
            class ItemHomepage {
              final String name;
              final IconData icon;
              final Color color;
          
              ItemHomepage(this.name, this.icon, this.color);
          }
          ```
      - Buat List `ItemHomepage` yang berisi tombol-tombol yang ingin ditambahkan
         ```dart
          final List<ItemHomepage> items = [
                ItemHomepage("Lihat Daftar Produk", Icons.shopping_cart, const Color(0xFFFF3D00)),
                ItemHomepage("Tambah Produk", Icons.add, const Color(0xFFFF6E40)),
                ItemHomepage("Logout", Icons.logout, const Color(0xFFFF9380)),
            ];
        ```
      - Buat class 'ItemCard' untuk menampilkan tombol
        ```dart
          class ItemCard extends StatelessWidget {
          // Menampilkan kartu dengan ikon dan nama.
        
          final ItemHomepage item; 
          
          const ItemCard(this.item, {super.key}); 
        
          @override
          Widget build(BuildContext context) {
  
          }
        ```
      - Menggunakan warna pada ItemCard
         ```dart
         ...
        @override
        Widget build(BuildContext context) {
          return Material(
            color: item.color,
            ...
          );
        }
        ```
      - Menampilkan Snackbar dengan Pesan "Kamu telah menekan tombol .." dengan logika `onTap`
         ```dart
         ...
        @override
        Widget build(BuildContext context) {
          return Material(
           child: InkWell(
            // Aksi ketika kartu ditekan.
            onTap: () {
              // Menampilkan pesan SnackBar saat kartu ditekan.
              ScaffoldMessenger.of(context)
                ..hideCurrentSnackBar()
                ..showSnackBar(
                  SnackBar(content: Text("Kamu telah menekan tombol ${item.name}!"))
                );
            },
          );
        }
        ```
      - Integrasikan `InfoCard` dan `ItemCard` untuk ditampilkan di `MyHomePage` dengan cara mengubah bagian `Widget build()`.
        
5. **Jalankan Aplikasi**
   ```dart
    flutter run
   ```
</details>

<details>
<summary>Tugas 8</summary>

## Apa kegunaan const di Flutter? Jelaskan apa keuntungan ketika menggunakan const pada kode Flutter. Kapan sebaiknya kita menggunakan const, dan kapan sebaiknya tidak digunakan?
Keyword `const` digunakan di Flutter untuk mendeklarasikan konstanta yang nilainya tetap sepanjang waktu. Manfaat utama const adalah meningkatkan efisiensi performa karena objek yang dideklarasikan dengan const dibuat hanya sekali dan dapat digunakan kembali. 

`const` sebaiknya digunakan ketika kita yakin bahwa nilai atau widget tersebut tidak akan berubah selama aplikasi berjalan (statis). Namun, pengunaan  `const` sebaiknya dihindari jika nilai tersebut dinamis atau bergantung pada input pengguna, karena dapat menyebabkan error ketika kode dijalankan.

## Jelaskan dan bandingkan penggunaan Column dan Row pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!
Di Flutter, **Column** dan **Row** adalah widget tata letak yang digunakan untuk menyusun widget secara vertikal dan horizontal.
  
 - **Column**: menyusun widget anak secara vertikal. Cocok untuk menampilkan konten bertingkat seperti formulir atau daftar.
 
 - **Row**: menyusun widget anak secara horizontal. Cocok untuk membuat toolbar, menu, atau menampilkan elemen dalam satu baris.


## Sebutkan apa saja elemen input yang kamu gunakan pada halaman form yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan!
Dalam tugas kali ini, saya menggunakan elemen sebagai berikut:
- `TextField` untuk input teks
- `Checkbox` untuk pilihan opsi
-  `Radio` untuk memilih salah satu dari beberapa opsi

Elemen input yang tidak saya gunakan, antara lain:
- `DropdownButton` untuk daftar pilihan.
- `Switch`, `Slider`, `DatePicker`, dan `TimePicker` yang bisa digunakan sesuai kebutuhan aplikasi. Namun, tidak semua elemen harus digunakan, dan pemilihan elemen bergantung pada jenis data yang ingin dikumpulkan dari pengguna.


## Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?
Flutter menyediakan `ThemeData` dalam widget `MaterialApp` untuk mengatur tema aplikasi. Anda dapat mendefinisikan warna, ukuran teks, serta gaya lainnya secara konsisten di seluruh aplikasi.

```dart
  MaterialApp(
    title: 'Flutter Demo',
    theme: ThemeData(
      colorScheme: ColorScheme.fromSwatch(
        primarySwatch: Colors.teal,
      ).copyWith(secondary: const Color(0xFFBF360C)),
      useMaterial3: true,
    ),
    home: MyHomePage(),
  );

```

## Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?
Untuk menangani navigasi di aplikasi multi-halaman, Flutter menggunakan widget Navigator untuk transisi antar halaman. Dengan Navigator.push, Anda dapat membuka halaman baru, dan Navigator.pop digunakan untuk kembali ke halaman sebelumnya.

```dart
  onTap: () {
      Navigator.push(
      context,
      MaterialPageRoute(builder: (context)=> const ProductEntryFormPage())
    );
  },
```

Untuk aplikasi dengan banyak bagian, penggunaan Drawer sangat membantu dalam mengelola navigasi antar halaman.
```dart
class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      ...
    )
```
</details>