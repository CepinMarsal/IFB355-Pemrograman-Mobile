import 'package:flutter/material.dart';
import 'menu_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA),

      body: SafeArea(
        child: Column(
          children: [
            // HEADER
            Container(
              width: double.infinity,
              padding: const EdgeInsets.fromLTRB(
                16,
                18,
                16,
                20,
              ),
              decoration: const BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(22),
                  bottomRight: Radius.circular(22),
                ),
              ),

              child: Column(
                children: [
                  // BARIS GREETING
                  Row(
                    children: [
                      // TEKS GREETING
                      Expanded(
                        child: Column(
                          crossAxisAlignment:
                              CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Halo, Cepin Marsal!',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            SizedBox(height: 4),

                            Text(
                              'E-Money Itenas',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                      ),

                      // ICON PROFILE
                      Container(
                        width: 44,
                        height: 44,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.person,
                          color: Colors.orange,
                          size: 26,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 16),

                  // SEARCH BAR
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 46,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 14,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.circular(14),
                          ),
                          child: const Row(
                            children: [
                              Icon(
                                Icons.search,
                                color: Colors.grey,
                                size: 22,
                              ),

                              SizedBox(width: 10),

                              Expanded(
                                child: Text(
                                  'Cari layanan E-Money...',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 13,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      const SizedBox(width: 10),

                      // ICON FILTER
                      Container(
                        width: 46,
                        height: 46,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.circular(14),
                        ),
                        child: const Icon(
                          Icons.tune,
                          color: Colors.orange,
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
                padding: const EdgeInsets.all(12),

                child: Column(
                  children: [
                    // BARIS 1
                    Row(
                      children: [
                        // SALDO
                        Expanded(
                          child: Container(
                            height: 140,
                            margin: const EdgeInsets.only(
                              right: 5,
                              bottom: 10,
                            ),
                            padding: const EdgeInsets.all(14),
                            decoration: BoxDecoration(
                              color: const Color(0xFFE1F0FF),
                              borderRadius:
                                  BorderRadius.circular(16),
                            ),

                            child: Column(
                              crossAxisAlignment:
                                  CrossAxisAlignment.start,
                              children: [
                                // ICON
                                Container(
                                  width: 38,
                                  height: 38,
                                  decoration:
                                      const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                  ),
                                  child: const Icon(
                                    Icons.account_balance_wallet,
                                    color: Colors.blue,
                                    size: 22,
                                  ),
                                ),

                                const SizedBox(height: 10),

                                const Text(
                                  'Saldo E-Money',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),

                                const SizedBox(height: 4),

                                const Text(
                                  'Rp 1.250.000',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        // TOP UP
                        Expanded(
                          child: Container(
                            height: 140,
                            margin: const EdgeInsets.only(
                              left: 5,
                              bottom: 10,
                            ),
                            padding: const EdgeInsets.all(14),
                            decoration: BoxDecoration(
                              color: const Color(0xFFE2F7E9),
                              borderRadius:
                                  BorderRadius.circular(16),
                            ),

                            child: Column(
                              crossAxisAlignment:
                                  CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 38,
                                  height: 38,
                                  decoration:
                                      const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                  ),
                                  child: const Icon(
                                    Icons.add_circle,
                                    color: Colors.green,
                                    size: 22,
                                  ),
                                ),

                                const SizedBox(height: 10),

                                const Text(
                                  'Top Up',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),

                                const SizedBox(height: 4),

                                const Text(
                                  'Tambah saldo',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),

                    // BARIS 2
                    Row(
                      children: [
                        // TRANSFER
                        Expanded(
                          child: Container(
                            height: 140,
                            margin: const EdgeInsets.only(
                              right: 5,
                              bottom: 10,
                            ),
                            padding: const EdgeInsets.all(14),
                            decoration: BoxDecoration(
                              color: const Color(0xFFFFF0DC),
                              borderRadius:
                                  BorderRadius.circular(16),
                            ),

                            child: Column(
                              crossAxisAlignment:
                                  CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 38,
                                  height: 38,
                                  decoration:
                                      const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                  ),
                                  child: const Icon(
                                    Icons.send,
                                    color: Colors.orange,
                                    size: 22,
                                  ),
                                ),

                                const SizedBox(height: 10),

                                const Text(
                                  'Transfer',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),

                                const SizedBox(height: 4),

                                const Text(
                                  'Kirim uang',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        // RIWAYAT
                        Expanded(
                          child: Container(
                            height: 140,
                            margin: const EdgeInsets.only(
                              left: 5,
                              bottom: 10,
                            ),
                            padding: const EdgeInsets.all(14),
                            decoration: BoxDecoration(
                              color: const Color(0xFFEDE4FF),
                              borderRadius:
                                  BorderRadius.circular(16),
                            ),

                            child: Column(
                              crossAxisAlignment:
                                  CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 38,
                                  height: 38,
                                  decoration:
                                      const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                  ),
                                  child: const Icon(
                                    Icons.history,
                                    color: Colors.deepPurple,
                                    size: 22,
                                  ),
                                ),

                                const SizedBox(height: 10),

                                const Text(
                                  'Riwayat',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),

                                const SizedBox(height: 4),

                                const Text(
                                  'Riwayat transaksi',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),

                    // BARIS 3
                    Row(
                      children: [
                        // BAYAR TAGIHAN
                        Expanded(
                          child: Container(
                            height: 140,
                            margin: const EdgeInsets.only(
                              right: 5,
                              bottom: 10,
                            ),
                            padding: const EdgeInsets.all(14),
                            decoration: BoxDecoration(
                              color: const Color(0xFFFFE5EC),
                              borderRadius:
                                  BorderRadius.circular(16),
                            ),

                            child: Column(
                              crossAxisAlignment:
                                  CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 38,
                                  height: 38,
                                  decoration:
                                      const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                  ),
                                  child: const Icon(
                                    Icons.receipt_long,
                                    color: Colors.pink,
                                    size: 22,
                                  ),
                                ),

                                const SizedBox(height: 10),

                                const Text(
                                  'Bayar Tagihan',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),

                                const SizedBox(height: 4),

                                const Text(
                                  'Listrik, air, dll.',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        // QRIS
                        Expanded(
                          child: Container(
                            height: 140,
                            margin: const EdgeInsets.only(
                              left: 5,
                              bottom: 10,
                            ),
                            padding: const EdgeInsets.all(14),
                            decoration: BoxDecoration(
                              color: const Color(0xFFE1F0FF),
                              borderRadius:
                                  BorderRadius.circular(16),
                            ),

                            child: Column(
                              crossAxisAlignment:
                                  CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 38,
                                  height: 38,
                                  decoration:
                                      const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                  ),
                                  child: const Icon(
                                    Icons.qr_code_scanner,
                                    color: Colors.blue,
                                    size: 22,
                                  ),
                                ),

                                const SizedBox(height: 10),

                                const Text(
                                  'Bayar QRIS',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),

                                const SizedBox(height: 4),

                                const Text(
                                  'Scan untuk bayar',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 5),

                    // BUTTON SEMUA MENU
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(14),
                          ),
                          elevation: 0,
                        ),

                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const MenuPage(),
                            ),
                          );
                        },

                        child: const Row(
                          mainAxisAlignment:
                              MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.apps,
                              size: 21,
                            ),

                            SizedBox(width: 8),

                            Text(
                              'Lihat Semua Menu',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
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
}