import 'package:flutter/material.dart';

import 'kepala_kota.dart';
import 'kartu_pilar.dart';
import 'panel_laporan.dart';

class HalamanUtama extends StatelessWidget {
  const HalamanUtama({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F6F9),
      appBar: AppBar(
        title: const Text(
          'Nusantara Cerdas',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color(0xFF0D47A1),
        foregroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [
            KepalaKota(),
            SizedBox(height: 18),
            PanelLaporanWarga(),
            SizedBox(height: 22),
            Text(
              'Enam Pilar Kota Nusantara',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1E293B),
              ),
            ),
            SizedBox(height: 10),
            KartuPilar(
              namaPilar: 'Smart Governance',
              ikon: Icons.account_balance_rounded,
              deskripsi: 'Transparansi birokrasi dan keterbukaan layanan perizinan publik digital.',
              warnaTema: Color(0xFF0D47A1),
            ),
            KartuPilar(
              namaPilar: 'Smart Economy',
              ikon: Icons.monetization_on_rounded,
              deskripsi: 'Pemberdayaan ekosistem UMKM melalui integrasi platform pembayaran non-tunai.',
              warnaTema: Color(0xFF00897B),
            ),
            KartuPilar(
              namaPilar: 'Smart Living',
              ikon: Icons.health_and_safety_rounded,
              deskripsi: 'Fasilitas kesehatan tanggap darurat dan jaminan keselamatan warga terpadu.',
              warnaTema: Color(0xFFD81B60),
            ),
            KartuPilar(
              namaPilar: 'Smart Mobility',
              ikon: Icons.directions_bus_rounded,
              deskripsi: 'Sistem transportasi umum berbasis listrik dengan integrasi jadwal otomatis.',
              warnaTema: Color(0xFFF57C00),
            ),
            KartuPilar(
              namaPilar: 'Smart Environment',
              ikon: Icons.eco_rounded,
              deskripsi: 'Pengelolaan limbah pintar serta sensor pemantauan kualitas udara kota.',
              warnaTema: Color(0xFF2E7D32),
            ),
            KartuPilar(
              namaPilar: 'Smart People',
              ikon: Icons.school_rounded,
              deskripsi: 'Peningkatan literasi digital warga melalui pusat pelatihan inovasi kota.',
              warnaTema: Color(0xFF6A1B9A),
            ),
          ],
        ),
      ),
    );
  }
}
