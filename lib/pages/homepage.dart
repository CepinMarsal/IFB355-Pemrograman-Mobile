
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
    required this.onMenuTap,
    required this.onProfileTap,
    required this.onMapsTap,
  });

  final VoidCallback onMenuTap;
  final VoidCallback onProfileTap;
  final VoidCallback onMapsTap;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: const Color(0xFFF7F8FC),
        child: Column(
          children: [
            // HEADER
            Container(
              width: double.infinity,
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 22),
              decoration: const BoxDecoration(
                color: Color(0xFFFF9800),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(24),
                  bottomRight: Radius.circular(24),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Expanded(
                        child: Text(
                          'Halo, Cepin Marsal!',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 21,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Material(
                        color: Colors.white,
                        shape: const CircleBorder(),
                        child: InkWell(
                          customBorder: const CircleBorder(),
                          onTap: onProfileTap,
                          child: const SizedBox(
                            width: 44,
                            height: 44,
                            child: Icon(
                              Icons.person,
                              color: Color(0xFFEF8500),
                              size: 26,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 48,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 14,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(14),
                          ),
                          child: const Row(
                            children: [
                              Icon(
                                Icons.search,
                                color: Color(0xFF8A8F98),
                                size: 22,
                              ),
                              SizedBox(width: 10),
                              Expanded(
                                child: Text(
                                  'Cari layanan E-Money...',
                                  style: TextStyle(
                                    color: Color(0xFF8A8F98),
                                    fontSize: 13,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        width: 48,
                        height: 48,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: const Icon(
                          Icons.tune,
                          color: Color(0xFFEF8500),
                          size: 22,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // ISI HOME PAGE
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.fromLTRB(16, 18, 16, 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Layanan E-Money',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF293241),
                      ),
                    ),
                    const SizedBox(height: 12),

                    // BARIS 1
                    Row(
                      children: [
                        _menuCard(
                          icon: Icons.account_balance_wallet,
                          title: 'Saldo E-Money',
                          subtitle: 'Rp 1.250.000',
                          color: const Color(0xFFFFF0DB),
                          iconColor: const Color(0xFFED8900),
                        ),
                        const SizedBox(width: 12),
                        _menuCard(
                          icon: Icons.add_circle,
                          title: 'Top Up',
                          subtitle: 'Tambah saldo',
                          color: const Color(0xFFE6F6EC),
                          iconColor: const Color(0xFF2E9D61),
                        ),
                      ],
                    ),

                    // BARIS 2
                    Row(
                      children: [
                        _menuCard(
                          icon: Icons.send,
                          title: 'Transfer',
                          subtitle: 'Kirim uang',
                          color: const Color(0xFFE8F2FF),
                          iconColor: const Color(0xFF3478D4),
                        ),
                        const SizedBox(width: 12),
                        _menuCard(
                          icon: Icons.history,
                          title: 'Riwayat',
                          subtitle: 'Riwayat transaksi',
                          color: const Color(0xFFF0EAFE),
                          iconColor: const Color(0xFF7954C8),
                        ),
                      ],
                    ),

                    // BARIS 3
                    Row(
                      children: [
                        _menuCard(
                          icon: Icons.receipt_long,
                          title: 'Bayar Tagihan',
                          subtitle: 'Listrik, air, dll.',
                          color: const Color(0xFFFFE9EF),
                          iconColor: const Color(0xFFE45D85),
                        ),
                        const SizedBox(width: 12),
                        _menuCard(
                          icon: Icons.qr_code_scanner,
                          title: 'Bayar QRIS',
                          subtitle: 'Scan untuk bayar',
                          color: const Color(0xFFFFF0DB),
                          iconColor: const Color(0xFFED8900),
                        ),
                      ],
                    ),

                    const SizedBox(height: 8),

                    // TOMBOL LIHAT SEMUA MENU
                    SizedBox(
                      width: double.infinity,
                      height: 48,
                      child: ElevatedButton.icon(
                        onPressed: onMenuTap,
                        icon: const Icon(Icons.apps, size: 20),
                        label: const Text('Lihat Semua Menu'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFFF9800),
                          foregroundColor: Colors.white,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(13),
                          ),
                          textStyle: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 10),

                    // TOMBOL LIHAT PROFIL
                    SizedBox(
                      width: double.infinity,
                      height: 48,
                      child: OutlinedButton.icon(
                        onPressed: onProfileTap,
                        icon: const Icon(
                          Icons.person_outline,
                          size: 20,
                        ),
                        label: const Text('Lihat Profil'),
                        style: OutlinedButton.styleFrom(
                          foregroundColor: const Color(0xFFEF8500),
                          side: const BorderSide(
                            color: Color(0xFFFFB74D),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(13),
                          ),
                          textStyle: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 10),

                    // TOMBOL BUKA GOOGLE MAPS
                    SizedBox(
                      width: double.infinity,
                      height: 48,
                      child: OutlinedButton.icon(
                        onPressed: onMapsTap,
                        icon: const Icon(
                          Icons.location_on,
                          size: 20,
                        ),
                        label: const Text('Buka Google Maps'),
                        style: OutlinedButton.styleFrom(
                          foregroundColor: const Color(0xFFEF8500),
                          side: const BorderSide(
                            color: Color(0xFFFFB74D),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(13),
                          ),
                          textStyle: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 10),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _menuCard({
    required IconData icon,
    required String title,
    required String subtitle,
    required Color color,
    required Color iconColor,
  }) {
    return Expanded(
      child: Container(
        height: 136,
        margin: const EdgeInsets.only(bottom: 12),
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 38,
              height: 38,
              decoration: BoxDecoration(
                color: Colors.white.withValues(alpha: 0.9),
                borderRadius: BorderRadius.circular(11),
              ),
              child: Icon(
                icon,
                color: iconColor,
                size: 22,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: Color(0xFF293241),
              ),
            ),
            const SizedBox(height: 4),
            Text(
              subtitle,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 11,
                color: Color(0xFF737B87),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
