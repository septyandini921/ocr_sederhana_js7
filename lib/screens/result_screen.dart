import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final String ocrText;

  // Constructor yang memerlukan ocrText
  const ResultScreen({
    super.key, 
    required this.ocrText,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Hasil OCR')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: SelectableText(
            // Tampilkan pesan error jika ocrText kosong,
            // atau tampilkan teks hasil OCR. 
            // Mengganti '\n' dengan spasi untuk tampilan yang lebih rapi jika diperlukan.
            ocrText.isEmpty
                ? 'Tidak ada teks ditemukan.'
                : ocrText.replaceAll('\n', ' '), 
            style: const TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}