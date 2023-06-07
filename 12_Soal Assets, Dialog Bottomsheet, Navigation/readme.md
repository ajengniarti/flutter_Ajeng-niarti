untuk 12_Soal Asset, Dialog Bottomsheet, Navigation dijelaskan tentang 

Asset itu sendiri mengacu pada file seperti gambar, ikon, font, atau file konfigurasi lainnya yang digunakan dalam aplikasi. Asset ini ditempatkan di direktori "assets" dalam proyek Flutter dan
untuk penggunaan nya biasanya menggunakan  Image.asset untuk menampilkan gambar, properti fontFamily untuk mengatur jenis huruf.

Setelah itu ada Dialog Bottomsheet adalah layaknya dialog namun akan muncul dari bawah layar aplikasi. 
Jika ingin menggunakanya bisa memakai fungsi bawaan dari flutter yaitu showModalBottomSheet dan tidak lupa dengan 2 propertinya yaitu context dan builder.

Yang terakhir ada Navigation adalah sebuah aktifitas perpindahan dari halaman satu ke halaman lainya. Biasanya menggunakan berbagai mancam fungsi seperti 
Navigator.push() untuk perpindahan halaman, Navigator.pop() untuk kembali ke halaman sebelumnya lalu juga ada perpindahan halaman menggunakan paramenter pada constructor halaman yaitu 
Navigator.pushNamed() untuk perpindahan halaman, lalu ada Navigator.pop() untuk kembali ke halaman seblumnya