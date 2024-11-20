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
1. **Membuat Flutter Project dengan nama ** thrift_click** untuk mobile**
   ```dart
   flutter create thrift_click
   ```
   
2. **Masuk ke direktori Flutter Project**
   ```dart
    cd thrift_click
   ```
   
3.  **Membuat file baru bernama `menu.dart` pada direktori ` thrift_click/lib`**
   - Pada langkah ini, di dalam direktori ` thrift_click/lib` akan berisi 2 file, `main.dart` yang berfungsi sebagai layout utama aplikasi, dan `menu.dart` yang digunakan untuk menyimpan dan mengelola data menu yang akan ditampilkan di halaman utama aplikasi. Disini, saya juga memindahkan class `MyHomePage` dan `_MyHomePageState` dari file `main.dart` ke `menu.dart`.
     
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
- `TextField` untuk menerima input teks nama, deskripsi, dan harga produk

Elemen input yang tidak saya gunakan, antara lain:
- `Checkbox` untuk pilihan opsi
-  `Radio` untuk memilih salah satu dari beberapa opsi
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
Untuk menangani navigasi di aplikasi multi-halaman(multi-screens), Flutter menggunakan widget Navigator untuk transisi antar halaman. Dengan Navigator.push, Anda dapat membuka halaman baru, dan Navigator.pop digunakan untuk kembali ke halaman sebelumnya.

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

<details>
<summary>Tugas 9</summary>

## Jelaskan mengapa kita perlu membuat model untuk melakukan pengambilan ataupun pengiriman data JSON? Apakah akan terjadi error jika kita tidak membuat model terlebih dahulu?
Model diperlukan untuk mengatur struktur data JSON agar lebih terorganisir dan mudah diproses
- Model memetakan data JSON dari server ke objek di aplikasi. Ini memudahkan pengelolaan data.
- Dengan model, kita dapat memvalidasi data yang diterima atau dikirim untuk memastikan kesesuaiannya.
- Model membuat kode lebih modular dan mudah dipahami, sehingga mempermudah debugging dan pengembangan di masa depan.

Jika tidak menggunakan model, apa yang terjadi?
- Tanpa model, data JSON mungkin tidak terstruktur dengan baik, sehingga sulit diproses. Misalnya, tipe data yang tidak sesuai dapat memicu error saat memproses data.
- Parsing data JSON secara manual menyebabkan kode menjadi panjang dan sulit dipelihara.

## Jelaskan fungsi dari library http yang sudah kamu implementasikan pada tugas ini
Library `http` digunakan untuk:
- Memungkinkan aplikasi Flutter untuk melakukan `GET`, `POST`, `PUT`, dan `DELETE` ke API server.
- Library ini membantu mengelola respons dari server, seperti membaca body, status kode, atau header.
- Memanfaatkan fitur `Future` untuk menangani permintaan dan respons secara asynchronous, sehingga UI tetap responsif.

## Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.
CookieRequest adalah bagian dari pustaka pbp_django_auth yang digunakan untuk menangani autentikasi berbasis cookie antara aplikasi Flutter dan backend Django. CookieRequest menyimpan informasi autentikasi (seperti session cookie) yang diterima dari server saat pengguna login. Semua request HTTP yang dikirim menggunakan CookieRequest otomatis menyertakan cookie autentikasi di header. Ini memastikan server mengenali pengguna tanpa perlu memasukkan kredensial berulang kali. Ga perlu login berulang", CookieRequest juga memastikan session cookie dihapus, baik di aplikasi maupun di server saat user logout.

Karena autentikasi berbasis session adalah fitur yang berlaku di seluruh aplikasi, instance CookieRequest harus tersedia untuk setiap widget atau layar yang memerlukan autentikasi. Ketika pengguna berpindah dari halaman produk ke halaman detail, cookie autentikasi perlu digunakan untuk memvalidasi pengguna tanpa meminta login ulang. Semua komponen aplikasi yang memerlukan komunikasi dengan server membutuhkan instance yang sama. Ini memastikan cookie session dan state tetap konsisten. Dengan menggunakan satu instance CookieRequest yang dibagikan pastinya akan mengurangi overhead karena tidak perlu membuat dan mengelola banyak instance untuk setiap komponen.

Dalam tugas ini kita membagikan instance CookieRequest menggunakan provider sehingga pengelolaan state menjadi lebih efisien. Komponen-komponen yang memerlukan akses hanya perlu memanggil context.watch<CookieRequest>().

## Jelaskan mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter.
1. Pengguna memasukkan data melalui antarmuka Flutter (form atau input field).
2. Data input dikirim melalui permintaan HTTP menggunakan library seperti http atau CookieRequest. Jika pengiriman menggunakan POST, data dikirim dalam body permintaan.
3. Server (misalnya Django) menerima permintaan, memproses data, dan mengirimkan respons dalam format JSON.
4. Aplikasi Flutter menerima data JSON dari server dan mem-parsing-nya menggunakan model atau langsung membaca data mentah.
5. Data yang sudah diproses diubah menjadi widget Flutter, seperti ListView atau Text, untuk ditampilkan kepada pengguna.

## Jelaskan mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.
**A. Register**
  **Flutter** :
  - Input Data : Pengguna mengisi form register melalui widget seperti `TextField`.
  - Validasi : Data divalidasi di Flutter untuk memastikan input sesuai, seperti email yang valid atau password dengan kriteria tertentu.
  - Kirim Data : Flutter mengirim data ke `backend` menggunakan metode `HTTP POST` dengan format `JSON`.
    ```dart
    final response = await request.postJson(
      "http://127.0.0.1:8000/auth/register/",
      jsonEncode({
        "username": username,
        "password1": password1,
        "password2": password2,
      }));
    ```
  **Django** :
  - Penerimaan Data: Django menerima JSON dan memproses data melalui endpoint register.
  - Validasi dan Penyimpanan: Data divalidasi sesuai aturan (misalnya, username unik), lalu disimpan ke database.
  - Respons: Django mengirimkan respons JSON ke Flutter, seperti :
    ```dart
    {"status": "success", "message": "Registration successful"}
    ```
  **Flutter** :
  - Feedback: Jika registrasi berhasil, Flutter menampilkan notifikasi dan mengarahkan pengguna ke halaman login.

**B. Login**
  **Flutter** :
  - Input Data : Pengguna memasukkan `username` dan `password`.
  - Validasi : Data divalidasi di sisi Flutter.
  - Kirim Data : Flutter mengirimkan request HTTP `POST` ke Django dengan data login.
    ```dart
    final response = await request
        .login("http://127.0.0.1:8000/auth/login/", {
      'username': username,
      'password': password,
    });
    ```
  **Django** :
  - Penerimaan Data: Django menerima JSON dari Flutter dan memprosesnya.
  - Validasi dan Penyimpanan: Django memverifikasi username dan password menggunakan sistem autentikasi internal.
  - Respons: Django mengembalikan respons JSON ke Flutter, misalnya:
    ```dart
    {"status": true, "message": "Login successful", "username": "user123"}
    ```
  **Flutter** :
  - Simpan Cookie: Library seperti `pbp_django_auth` menyimpan cookie untuk sesi pengguna.
  - Akses Menu: Jika login berhasil, Flutter menampilkan menu utama sesuai status pengguna.

**C. Logout**
  **Flutter** :
  - Aksi Logout: Pengguna menekan tombol logout.
  - Request ke Django: Flutter mengirimkan request `HTTP GET` atau `POST` ke endpoint logout.
    ```dart
    final response = await request.logout(
                  "http://127.0.0.1:8000/auth/logout/");
    ```
  **Django** :
  - Hapus Sesi: Django menghapus data sesi pengguna dari server.
  - Respons: Django mengirimkan respons JSON ke Flutter, seperti:
    ```dart
    {"status": true, "message": "Logout successful"}
    ```
  **Flutter** :
  - Hapus Cookie: Library seperti `pbp_django_auth` menghapus cookie dari perangkat pengguna.
  - Redirect: Flutter mengarahkan pengguna kembali ke halaman login.

## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).

#### **Setup Autentikasi Django**
1. Buat Django App:
  - Buat app `authentication` dan tambahkan ke `INSTALLED_APPS`.
2. Install & Konfigurasi CORS:
  - Jalankan `pip install django-cors-headers.`
  - Tambahkan `corsheaders` ke `INSTALLED_APPS` dan `MIDDLEWARE`.
  - Tambahkan pengaturan:
  ```python
     CORS_ALLOW_ALL_ORIGINS = True
     CORS_ALLOW_CREDENTIALS = True
     CSRF_COOKIE_SECURE = True
     SESSION_COOKIE_SECURE = True
     CSRF_COOKIE_SAMESITE = 'None'
     SESSION_COOKIE_SAMESITE = 'None'
  ```
2. Buat Login View:
  - Tambahkan fungsi login pada authentication/views.py.
  - Tambahkan routing di authentication/urls.py
  ```python
     path('login/', login, name='login')
  ```
4. Tambahkan Path di URLs Utama:
  - Di urls.py utama, tambahkan
  ```python
     path('auth/', include('authentication.urls'))
  ```
#### **Integrasi Autentikasi pada Flutter**
5. Install Dependencies
  ```bash
     flutter pub add provider
     flutter pub add pbp_django_auth
  ```
6. Modifikasi main.dart:
- Tambahkan `Provider` untuk membagikan `CookieRequest` ke seluruh aplikasi.
7. Buat login.dart:
- Tambahkan form login dengan autentikasi menggunakan endpoint `/auth/login/`.

#### **Setup Register Django
8. Buat Register View:
- Tambahkan fungsi register di `authentication/views.py`
- Tambahkan routing di `authentication/urls.py`
```python
     path('register/', register, name='register')
```
9. Buat register.dart di Flutter:
- Buat form register untuk mengirim data ke `/auth/register/`.

#### **Integrasi Fetch Data dari Django ke Flutter**
10. Tambahkan Dependency HTTP:
- Jalankan `flutter pub add htt`p.
- Tambahkan izin akses Internet di `AndroidManifest.xml`.
11. Setup Fetch Data:
- Buat model dengan `Quicktype` dan tambahkan di folder `models/`.
- Buat file `list_productentry.dar`t untuk menampilkan data dari endpoint `/json/`.

#### **Integrasi Form Flutter ke Django**
12. Buat View untuk Create product:
- Tambahkan fungsi `create_product_flutter` di `main/views.py`.
- Tambahkan routing di `main/urls.py`
  ```python
      path('create-flutter/', create_product_flutter, name='create_product_flutter')
  ```
13. Modifikasi Form Flutter:
- Gunakan CookieRequest untuk mengirim data dari form ke endpoint `/create-flutter/`.

#### **Implementasi Logout**
14. Buat Logout View di Django:
- Tambahkan fungsi logout di `authentication/views.py`.
- Tambahkan routing di `authentication/urls.p`y:
  ```python
      path('logout/', logout, name='logout')
  ```

15. Integrasi Logout pada Flutter:
- Tambahkan logika logout ke widget yang sesuai menggunakan endpoint `/auth/logout/`.

Test Semua Fungsi: Coba login, register, fetch data, kirim data, dan logout melalui Flutter.
</details>