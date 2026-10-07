import 'package:flutter/material.dart';
import 'menu_pages.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // APP BAR
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'Menu E-Money',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
      ),

      // BODY
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),

          child: Column(
            children: [
              // JUDUL
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Semua Layanan',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              const SizedBox(height: 5),

              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Pilih layanan yang ingin kamu gunakan',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 13,
                  ),
                ),
              ),

              const SizedBox(height: 25),

              // BARIS 1
              Row(
                children: [
                  // TOP UP
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const TopUpPage(),
                          ),
                        );
                      },
                      child: Column(
                        children: [
                          Container(
                            width: 52,
                            height: 52,
                            decoration: BoxDecoration(
                              color: Colors.blue.shade100,
                              borderRadius:
                                  BorderRadius.circular(14),
                            ),
                            child: Icon(
                              Icons.add,
                              color: Colors.blue.shade700,
                              size: 28,
                            ),
                          ),
                          const SizedBox(height: 6),
                          const Text(
                            'Top Up',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 11,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // TRANSFER
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const TransferPage(),
                          ),
                        );
                      },
                      child: Column(
                        children: [
                          Container(
                            width: 52,
                            height: 52,
                            decoration: BoxDecoration(
                              color: Colors.blue.shade100,
                              borderRadius:
                                  BorderRadius.circular(14),
                            ),
                            child: Icon(
                              Icons.send,
                              color: Colors.blue.shade700,
                              size: 28,
                            ),
                          ),
                          const SizedBox(height: 6),
                          const Text(
                            'Transfer',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 11,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // SCAN QR
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const ScanQRPage(),
                          ),
                        );
                      },
                      child: Column(
                        children: [
                          Container(
                            width: 52,
                            height: 52,
                            decoration: BoxDecoration(
                              color: Colors.orange.shade100,
                              borderRadius:
                                  BorderRadius.circular(14),
                            ),
                            child: Icon(
                              Icons.qr_code_scanner,
                              color: Colors.orange.shade700,
                              size: 28,
                            ),
                          ),
                          const SizedBox(height: 6),
                          const Text(
                            'Scan QR',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 11,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // RIWAYAT
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const RiwayatPage(),
                          ),
                        );
                      },
                      child: Column(
                        children: [
                          Container(
                            width: 52,
                            height: 52,
                            decoration: BoxDecoration(
                              color: Colors.green.shade100,
                              borderRadius:
                                  BorderRadius.circular(14),
                            ),
                            child: Icon(
                              Icons.history,
                              color: Colors.green.shade700,
                              size: 28,
                            ),
                          ),
                          const SizedBox(height: 6),
                          const Text(
                            'Riwayat',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 11,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 25),

              // BARIS 2
              Row(
                children: [
                  // PULSA & DATA
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const PulsaPage(),
                          ),
                        );
                      },
                      child: Column(
                        children: [
                          Container(
                            width: 52,
                            height: 52,
                            decoration: BoxDecoration(
                              color: Colors.pink.shade100,
                              borderRadius:
                                  BorderRadius.circular(14),
                            ),
                            child: Icon(
                              Icons.phone_android,
                              color: Colors.pink.shade700,
                              size: 28,
                            ),
                          ),
                          const SizedBox(height: 6),
                          const Text(
                            'Pulsa & Data',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 11,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // VOUCHER GAME
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const VoucherGamePage(),
                          ),
                        );
                      },
                      child: Column(
                        children: [
                          Container(
                            width: 52,
                            height: 52,
                            decoration: BoxDecoration(
                              color: Colors.amber.shade100,
                              borderRadius:
                                  BorderRadius.circular(14),
                            ),
                            child: Icon(
                              Icons.sports_esports,
                              color: Colors.amber.shade800,
                              size: 28,
                            ),
                          ),
                          const SizedBox(height: 6),
                          const Text(
                            'Voucher Game',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 11,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // TRANSPORTASI
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const TransportasiPage(),
                          ),
                        );
                      },
                      child: Column(
                        children: [
                          Container(
                            width: 52,
                            height: 52,
                            decoration: BoxDecoration(
                              color: Colors.purple.shade100,
                              borderRadius:
                                  BorderRadius.circular(14),
                            ),
                            child: Icon(
                              Icons.directions_bus,
                              color: Colors.purple.shade700,
                              size: 28,
                            ),
                          ),
                          const SizedBox(height: 6),
                          const Text(
                            'Transportasi',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 11,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // TAGIHAN AIR
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const TagihanAirPage(),
                          ),
                        );
                      },
                      child: Column(
                        children: [
                          Container(
                            width: 52,
                            height: 52,
                            decoration: BoxDecoration(
                              color: Colors.lightBlue.shade100,
                              borderRadius:
                                  BorderRadius.circular(14),
                            ),
                            child: Icon(
                              Icons.water_drop,
                              color: Colors.lightBlue.shade700,
                              size: 28,
                            ),
                          ),
                          const SizedBox(height: 6),
                          const Text(
                            'Tagihan Air',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 11,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 25),

              // BARIS 3
              Row(
                children: [
                  // LISTRIK
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const ListrikPage(),
                          ),
                        );
                      },
                      child: Column(
                        children: [
                          Container(
                            width: 52,
                            height: 52,
                            decoration: BoxDecoration(
                              color: Colors.green.shade100,
                              borderRadius:
                                  BorderRadius.circular(14),
                            ),
                            child: Icon(
                              Icons.bolt,
                              color: Colors.green.shade700,
                              size: 28,
                            ),
                          ),
                          const SizedBox(height: 6),
                          const Text(
                            'Listrik',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 11,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // TV KABEL
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const TVKabelPage(),
                          ),
                        );
                      },
                      child: Column(
                        children: [
                          Container(
                            width: 52,
                            height: 52,
                            decoration: BoxDecoration(
                              color: Colors.red.shade100,
                              borderRadius:
                                  BorderRadius.circular(14),
                            ),
                            child: Icon(
                              Icons.tv,
                              color: Colors.red.shade700,
                              size: 28,
                            ),
                          ),
                          const SizedBox(height: 6),
                          const Text(
                            'TV Kabel',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 11,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // STREAMING
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const StreamingPage(),
                          ),
                        );
                      },
                      child: Column(
                        children: [
                          Container(
                            width: 52,
                            height: 52,
                            decoration: BoxDecoration(
                              color: Colors.deepPurple.shade100,
                              borderRadius:
                                  BorderRadius.circular(14),
                            ),
                            child: Icon(
                              Icons.movie,
                              color: Colors.deepPurple.shade700,
                              size: 28,
                            ),
                          ),
                          const SizedBox(height: 6),
                          const Text(
                            'Streaming',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 11,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // BELANJA ONLINE
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const BelanjaOnlinePage(),
                          ),
                        );
                      },
                      child: Column(
                        children: [
                          Container(
                            width: 52,
                            height: 52,
                            decoration: BoxDecoration(
                              color: Colors.pink.shade100,
                              borderRadius:
                                  BorderRadius.circular(14),
                            ),
                            child: Icon(
                              Icons.shopping_bag,
                              color: Colors.pink.shade700,
                              size: 28,
                            ),
                          ),
                          const SizedBox(height: 6),
                          const Text(
                            'Belanja Online',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 11,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              const Spacer(),

              // TOMBOL BACK
              SizedBox(
                width: double.infinity,
                height: 48,
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
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'Back',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}