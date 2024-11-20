# toko_kuning

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


TUGAS 7
1. Apa itu Stateless Widget dan Stateful Widget? Apa perbedaannya?
Stateless Widget: Ini adalah widget yang tidak berubah. Artinya, widget ini hanya akan ditampilkan sekali dan tidak akan ada perubahan data atau tampilan setelah itu. Pada intinya, bikin tampilan yang isinya tetap sama sepanjang waktu, disini pakai StatelessWidget. Contohnya kayak teks atau gambar yang nggak berubah.

Stateful Widget: Berbeda dari stateless, StatefulWidget itu widget yang bisa berubah. Misalnya, kalau saya ingin buat tombol yang berubah warna saat ditekan, atau form yang datanya berubah-ubah, ini pakai StatefulWidget. Widget ini punya state yang bisa diperbarui seiring waktu. Jadi, kalau ada interaksi dari pengguna, tampilannya bisa ikut berubah.

Perbedaannya:

StatelessWidget: Cuma ditampilkan sekali, nggak bisa berubah.
StatefulWidget: Bisa berubah, ada state yang bisa diupdate.

2. Widget apa saja yang digunakan di proyek ini dan fungsinya?
Di proyek ini, beberapa widget yang digunakan adalah:

Scaffold: Ini adalah widget yang jadi kerangka utama untuk halaman saya, termasuk bagian AppBar dan body. Kalau di ibaratkan, ini kayak "struktur bangunan"-nya.

AppBar: Ini adalah bagian atas layar yang menampilkan judul atau aplikasi. Biasanya ada tombol navigasi atau aksi lainnya di sini.

Padding: Widget yang memberi jarak atau padding di sekitar konten, biar nggak mepet dengan tepi layar.

Column dan Row: Ini digunakan untuk menyusun widget lain secara vertikal (Column) atau horizontal (Row). Jadi saya bisa ngatur tata letaknya.

Card: Kartu ini dipakai buat membungkus konten dengan tampilan yang lebih menarik, biasanya dengan bayangan sedikit di bawahnya.

GridView: Widget ini dipakai buat menampilkan item-item dalam bentuk grid (seperti tampilan kotak-kotak).

InkWell: Widget ini buat memberi efek saat pengguna menekan suatu elemen. Biasanya ada efek ripple atau animasi kecil.

3. Apa fungsi dari setState()? Variabel apa saja yang bisa terdampak?
setState() itu digunakan di dalam StatefulWidget untuk memberi tahu Flutter kalau ada perubahan pada data atau state yang mengubah tampilan. Jadi, ketika manggil setState(), itu bakal memicu Flutter untuk merender ulang widget yang berubah, dan menampilkan tampilan yang baru.

Variabel yang terdampak adalah variabel yang ada di dalam state (kelas yang diwariskan dari State<T>). Misalnya, kalau saya punya sebuah variabel di state yang ngatur tampilan, dan saya ubah variabel itu, setState() bakal bikin tampilan itu di-update otomatis.


4. Perbedaan antara const dan final
const: Variabel yang menggunakan const ini nilai dari variabel tersebut tidak bisa diubah sama sekali selama aplikasi berjalan. Ini juga berarti nilai tersebut sudah ditentukan saat kompilasi, bukan saat runtime. Biasanya dipakai di tempat yang butuh performa tinggi atau nilai yang memang konstan.

final: Variabel yang menggunakan final hanya bisa di-assign sekali, tapi nilainya dapat dihitung saat runtime. Jadi, kalau const itu benar-benar tetap selama kompilasi, final itu tetap nggak bisa diubah setelah pertama kali di-set, tapi bisa ditentukan saat aplikasi berjalan.

5. Bagaimana cara mengimplementasikan checklist-checklist di atas?

Tombol Lihat Daftar Produk, Tambah Produk, dan Logout: Saya buat list ItemHomepage yang berisi tiga tombol tersebut dengan ikon dan warna yang berbeda-beda. Setiap tombol diwakili oleh objek dengan nama, ikon, dan warna.
Snackbar: Untuk menampilkan pesan saat tombol ditekan, saya pakai InkWell di dalam setiap tombol. Setiap kali tombol ditekan, saya manggil ScaffoldMessenger.of(context).showSnackBar() untuk menampilkan pesan Snackbar yang sesuai dengan tombol yang ditekan.



TUGAS 8
1. Apa kegunaan const di Flutter? Jelaskan apa keuntungan ketika menggunakan const pada kode Flutter. Kapan sebaiknya kita menggunakan const, dan kapan sebaiknya tidak digunakan?
const di Flutter berguna untuk mendefinisikan nilai konstan yang tidak berubah selama aplikasi berjalan. Dengan const, nilai dari widget atau variabel sudah dipastikan pada saat kompilasi (compile-time) dan tidak perlu di-render ulang, sehingga dapat menghemat memori dan meningkatkan performa.

Keuntungan menggunakan const adalah bisa membantu aplikasi berjalan lebih efisien, karena widget dengan nilai const tidak perlu dibangun ulang jika terjadi perubahan pada widget lain.

Sebaiknya kita menggunakan const ketika widget atau variabel memiliki nilai yang tidak akan berubah sepanjang waktu. Misalnya, teks statis atau ikon yang tidak berubah. Namun, jika nilai atau kontennya bisa berubah di kemudian waktu, lebih baik tidak menggunakan const, melainkan menggunakan final atau variabel biasa.

2. Jelaskan dan bandingkan penggunaan Column dan Row pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!
Jelaskan dan bandingkan penggunaan Column dan Row pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!

Column dan Row adalah widget layout di Flutter yang digunakan untuk menyusun elemen secara vertikal (Column) atau horizontal (Row).

Column: Widget ini menyusun elemen secara vertikal, dari atas ke bawah. Biasanya digunakan jika kita ingin menumpuk widget seperti teks, gambar, atau tombol secara berurutan ke bawah.
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  item.icon,
                  color: Colors.white,
                  size: 30.0,
                ),
              ]
            )

Row: Widget ini menyusun elemen secara horizontal, dari kiri ke kanan. Cocok digunakan jika ingin meletakkan elemen secara sejajar dalam satu baris.
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InfoCard(title: 'NPM', content: npm),
                InfoCard(title: 'Name', content: name),
                InfoCard(title: 'Class', content: className),
              ],
            ),


3. Sebutkan apa saja elemen input yang kamu gunakan pada halaman form yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan!
TextFormField untuk input nama produk (_product):

Ini digunakan untuk memasukkan nama produk. Terdapat validasi untuk memastikan bahwa input tidak kosong.
TextFormField untuk input deskripsi produk (_description):

Digunakan untuk memasukkan deskripsi produk. Sama seperti input produk, validasi memastikan bahwa deskripsi tidak kosong.
TextFormField untuk input jumlah produk (_quantity):

Ini digunakan untuk memasukkan kuantitas atau jumlah produk. Terdapat validasi tambahan yang memastikan input berupa angka dan tidak kosong.
Pada form ini, elemen input lain yang ada di Flutter, tetapi tidak digunakan adalah:

Checkbox: Elemen ini bisa digunakan untuk opsi biner seperti memilih beberapa kategori atau fitur tambahan.
Switch: Untuk pilihan on/off atau aktif/non-aktif, misalnya untuk mengaktifkan penjualan atau tidak.
Radio: Untuk memilih satu opsi dari beberapa pilihan yang tersedia.
DropdownButton atau DropdownButtonFormField: Untuk membuat menu drop-down yang bisa digunakan jika terdapat pilihan kategori atau tipe produk dalam bentuk daftar.


4. Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?
Dalam Flutter, tema dapat diatur melalui ThemeData di dalam MaterialApp, sehingga seluruh aplikasi memiliki tampilan konsisten. Misalnya, kita bisa mengatur warna utama, warna teks, dan gaya tombol di dalam tema.

Ya, saya mengimplementasikan tema pada aplikasi saya. Saya mendefinisikan ThemeData untuk warna utama (primary) dan warna sekunder (secondary), serta mengatur gaya teks default dan elemen-elemen lainnya. Dengan begitu, saya tidak perlu mengatur gaya secara manual untuk setiap widget dan memastikan semua elemen UI memiliki tampilan yang seragam.

5. Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?
Untuk menangani navigasi dengan banyak halaman, saya menggunakan Navigator pada Flutter. Navigator.push digunakan untuk berpindah ke halaman baru, dan Navigator.pop untuk kembali ke halaman sebelumnya. Saya juga mendefinisikan routes di MaterialApp sehingga setiap halaman memiliki nama unik, yang memudahkan navigasi menggunakan Navigator.pushNamed untuk pergi ke halaman tertentu.


Jelaskan mengapa kita perlu membuat model untuk melakukan pengambilan ataupun pengiriman data JSON? Apakah akan terjadi error jika kita tidak membuat model terlebih dahulu?
Model digunakan untuk menyusun dan memformat data secara terstruktur, baik itu untuk pengambilan maupun pengiriman data JSON. Dalam aplikasi Flutter, model ini memberikan kemudahan untuk menangani data yang dikirim ke server atau diterima dari server, dengan memastikan format data yang diterima atau dikirim sudah sesuai dengan yang diharapkan.
  Pengambilan Data: Setelah menerima JSON dari server, data tersebut bisa diubah menjadi objek yang lebih mudah diolah dalam Flutter, seperti list, map, atau objek dari kelas model. Dengan model, kita bisa dengan mudah mengonversi JSON menjadi objek Dart yang memiliki tipe data jelas.
  Pengiriman Data: Saat mengirim data ke server (misalnya saat menambahkan produk atau mood baru), model memastikan bahwa data yang dikirimkan mengikuti struktur yang benar (misalnya, name, price, quantity dalam format JSON).
  Jika Tidak Membuat Model: Tanpa model, kita harus memanipulasi data secara manual, seperti menggunakan Map<String, dynamic> setiap kali mengirim atau menerima data JSON. Hal ini lebih rawan error, karena tidak ada pengecekan tipe data dan strukturnya.



Jelaskan fungsi dari library http yang sudah kamu implementasikan pada tugas ini
Library http digunakan untuk melakukan permintaan HTTP ke server (misalnya, ke backend Django). Dalam kode ini, kita menggunakan http untuk mengirim permintaan POST dan menerima respons dalam bentuk JSON.
Permintaan tersebut bisa berupa operasi seperti login, register, dan mengirim data seperti mood atau produk baru ke server.
Fungsi utama dari http adalah untuk mengelola komunikasi antara aplikasi Flutter dan server Django, serta mengatur status respons (misalnya, jika statusnya sukses atau error).


Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.
Fungsi CookieRequest: CookieRequest adalah subclass dari http yang berfungsi untuk mengelola permintaan HTTP dan menyimpan cookie (biasanya untuk otentikasi pengguna). Cookie ini penting untuk melacak sesi pengguna, seperti setelah login, agar pengguna tidak perlu login ulang setiap kali.
Mengapa Perlu Dibagikan: CookieRequest perlu dibagikan ke semua komponen karena menyimpan informasi sesi pengguna (seperti cookie otentikasi). Dengan membagikan instance CookieRequest, seluruh aplikasi dapat mengakses sesi pengguna yang sudah login dan mengirim permintaan yang memerlukan otentikasi (misalnya, menambahkan produk atau melihat mood pengguna).
Membagikan instance CookieRequest memastikan bahwa semua permintaan HTTP dapat menggunakan cookie yang sama, memungkinkan autentikasi tetap terjaga di seluruh aplikasi.

Jelaskan mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter.
Input Data: Pengguna mengisi data dalam form Flutter, seperti form untuk menambahkan produk atau mood. Data tersebut diambil dari TextFormField dan disimpan dalam variabel lokal.
Pengiriman Data ke Server: Setelah pengguna menekan tombol "Save", data akan dikirim ke server menggunakan http request (postJson dari CookieRequest).
Data dikirim dalam format JSON (jsonEncode), sesuai dengan struktur yang diinginkan oleh backend (misalnya, data produk atau mood baru).
Proses di Server: Backend Django menerima data JSON dan memprosesnya (misalnya, menyimpannya ke database). Setelah proses selesai, server mengirimkan respons kembali (misalnya, status "success" atau "error").
Menampilkan Data pada Flutter: Setelah menerima respons sukses, aplikasi Flutter akan menampilkan pesan sukses dengan SnackBar dan bisa memuat ulang halaman atau navigasi ke halaman lain yang memperbarui tampilan data.

Jelaskan mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.
1. Login:
Pengguna memasukkan data akun (username dan password) di halaman login Flutter.
Data tersebut dikirim ke server Django menggunakan HTTP POST request (misalnya, endpoint /login/).
Server memvalidasi data, dan jika berhasil, server mengembalikan token atau cookie yang menunjukkan bahwa pengguna sudah terautentikasi.
2. Register:
Pengguna mengisi form register dengan data akun baru.
Data dikirim ke server untuk dibuatkan akun baru, dan server memberikan respons sukses atau error.
3. Logout:
Ketika pengguna menekan tombol logout, aplikasi mengirim permintaan ke server untuk menghapus sesi atau cookie otentikasi.
Server memproses permintaan logout dan menghapus sesi atau cookie. Setelah itu, aplikasi mengalihkan pengguna kembali ke halaman login.

Peran CookieRequest: CookieRequest menjaga sesi ini dengan menyertakan cookie di setiap permintaan HTTP, memastikan pengguna tetap terautentikasi sampai logout.


Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).
1. Buat Model Data: Tentukan model data (misalnya, produk, mood) di server Django dan di Flutter Pastikan format data JSON yang dikirim dan diterima sudah sesuai dengan model ini.
2. Integrasi HTTP dengan CookieRequest: Implementasikan http di Flutter untuk berkomunikasi dengan server. Gunakan CookieRequest untuk menangani otentikasi dan cookie.
3. Buat Form Input di Flutter: Buat halaman dengan TextFormField untuk menerima input dari pengguna. Pastikan data yang dimasukkan diproses dengan benar.
4. Kirim Data ke Server: Implementasikan fungsi yang mengirimkan data ke server menggunakan HTTP POST. Pastikan data  di-encode dengan format JSON.
5. Menangani Respons dari Server: Setelah data dikirim, tangani respons server (sukses atau error) dan beri feedback pada pengguna menggunakan SnackBar atau dialog.
6. Autentikasi Pengguna: Implementasikan login dan register dengan mengirim data akun ke server dan mendapatkan respons token atau status autentikasi.
7. Navigasi dan Keamanan: Gunakan Navigator untuk berpindah antar halaman sesuai status login dan pastikan sesi pengguna tetap aktif selama mereka berada di aplikasi. Dengan mengikuti langkah-langkah ini, Anda dapat membangun aplikasi yang dapat menangani pengiriman data, autentikasi pengguna, dan pengelolaan sesi dengan baik, sambil menjaga aplikasi tetap terstruktur dan aman.