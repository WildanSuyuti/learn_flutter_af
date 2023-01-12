import 'package:flutter/material.dart';
import 'package:learn_flutter/learn_custom_button_page.dart';

class LearnButtonPage extends StatelessWidget {
  const LearnButtonPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Belajar Tombol di Flutter'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ElevatedButton(
          // saat di tekan
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (BuildContext context) {
                return const LearnCustomButtonPage();
              }),
            );
          },
          // saat ditekan lama
          onLongPress: () {
            debugPrint('Elevated button di tekan lama');
          },
          // Mengatur style button
          style: ButtonStyle(
            // Untuk merubah ukuran
            textStyle: MaterialStateProperty.all<TextStyle>(
              const TextStyle(fontSize: 23),
            ),
            // Untuk Mengganti Background
            backgroundColor: MaterialStateProperty.all<Color>(Colors.yellow),
            // Untuk Mengganti warna text
            foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
            // untuk mengatur posisi
            alignment: Alignment.bottomLeft,
            // maximumSize: MaterialStateProperty.all(Size(100, 100))
            // minimum size -> untuk mengatur ukuran awal /minimum
            minimumSize:
                MaterialStateProperty.all<Size>(Size(double.infinity, 100)),
            // mengatur warna overlay (efek saat tombol di tekan)
            overlayColor:
                MaterialStateProperty.all<Color>(Colors.black.withOpacity(0.1)),
            // mengatur ukuran bayangan / elevation
            elevation: MaterialStateProperty.all<double>(50),
            // mengatur warna bayangan
            shadowColor: MaterialStateProperty.all<Color>(Colors.red),
            // mengatur padding
            padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(20)),
            // untuk mengatur model tombolnya
            shape: MaterialStateProperty.all<OutlinedBorder>(
                // untuk memberi efek lekukan Membulat
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)))),
            // untuk memveri efek lekukan beveled / miring
            // BeveledRectangleBorder(borderRadius: BorderRadius.circular(40))
          ),
          // untuk menambahkan kontent bebas tidak harus Text
          child: Text(
            'Halaman Tombol Custom',
            // style: TextStyle(color: Colors.grey[200]),
          ),
        ),
      ),
    );
  }
}
