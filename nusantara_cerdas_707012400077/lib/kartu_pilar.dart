import 'package:flutter/material.dart';

class KartuPilar extends StatelessWidget {
  final String namaPilar;
  final IconData ikon;
  final String deskripsi;
  final Color warnaTema;

  const KartuPilar({
    super.key,
    required this.namaPilar,
    required this.ikon,
    required this.deskripsi,
    required this.warnaTema,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.symmetric(vertical: 6),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: warnaTema.withOpacity(0.12),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(ikon, color: warnaTema, size: 28),
            ),
            const SizedBox(width: 14),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    namaPilar,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: warnaTema,
                    ),
                  ),
                  const SizedBox(height: 3),
                  Text(
                    deskripsi,
                    style: const TextStyle(
                      fontSize: 13,
                      color: Colors.black87,
                      height: 1.3,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
