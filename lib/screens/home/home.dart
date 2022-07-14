import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../constants/constant.dart';
import 'components/inventory_status.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InventoryStatus(
                title: "Sudah Dikembalikan",
                subtitle: "12 Barang",
                icon: Iconsax.directbox_receive,
                color: primaryColor,
                onPressed: () {},
              ),
              InventoryStatus(
                title: "Sedang Dipinjam",
                subtitle: "8 Barang",
                icon: Iconsax.directbox_send,
                color: secondaryColor,
                onPressed: () {},
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Riwayat Peminjaman",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: darkColor,
                ),
              ),
              InkWell(
                onTap: () {},
                child: Row(
                  children: const [
                    Text(
                      "Lihat Semua",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: primaryColor,
                      ),
                    ),
                    SizedBox(width: 4),
                    Icon(
                      Iconsax.arrow_circle_right,
                      color: primaryColor,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          const Card(
            child: ListTile(
              leading: Icon(
                Iconsax.directbox_receive,
                color: successColor,
                size: 38,
              ),
              title: Text(
                "Barang 1",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: darkColor,
                ),
              ),
              subtitle: Text(
                "Dikembalikan pada tanggal: 12/12/2020",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: darkColor,
                ),
              ),
            ),
          ),
          const Card(
            child: ListTile(
              leading: Icon(
                Iconsax.directbox_send,
                color: errorColor,
                size: 38,
              ),
              title: Text(
                "Barang 2",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: darkColor,
                ),
              ),
              subtitle: Text(
                "Dipinjam pada tanggal: 12/12/2020",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: darkColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
