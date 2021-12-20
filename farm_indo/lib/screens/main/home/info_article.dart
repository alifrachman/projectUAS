// ignore_for_file: prefer_const_constructors

import 'package:farm_indo/models/article.dart';
import 'package:farm_indo/models/product.dart';
import 'package:flutter/material.dart';
import 'product_item.dart';

class infoarticle extends StatefulWidget {
  const infoarticle({ Key? key }) : super(key: key);

  @override
  _infoarticleState createState() => _infoarticleState();
}

class _infoarticleState extends State<infoarticle> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[200],
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Farm Indo'),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const SizedBox(height: 30),
              Text(
                'Rekomendasi Pupuk Tanaman Terbaik',
                style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 17,
                  ),
                ),
              const SizedBox(height: 15),
              Text(
                'Bagi yang baru belajar tentang tanam menanam, berikut ini beberapa jenis pupuk terbaik yang bisa dipilih agar tanaman tumbuh dengan sehat dan minim kerusakan.',
                textAlign: TextAlign.center,
                maxLines: 5,
                style: const TextStyle(
                fontSize: 15,
                  ),
                ),
                const SizedBox(height: 30),
              Text(
                '1. Pupuk Kotoran Kambing',
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(height: 15),
                Container(
                color: Colors.blueGrey[100],
                width: 200,
                height: 200,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.network(
                  'https://cdnt.orami.co.id/unsafe/468x832/cdn-cas.orami.co.id/parenting/images/pupuk_tanaman_hias-1.width-800.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Text(
                'Pupuk dari kotoran kambing adalah salah satu pupuk tanaman hias yang terbaik. Ini karena kotoran kambing punya kandungan kalium lebih tinggi dari pupuk lainya.',
                  textAlign: TextAlign.center,
                  maxLines: 10,
                  style: const TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(height: 40),
                Text(
                '2. Pupuk PLP',
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(height: 15),
                Container(
                color: Colors.blueGrey[100],
                width: 200,
                height: 200,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.network(
                  'https://cdnt.orami.co.id/unsafe/468x578/cdn-cas.orami.co.id/parenting/images/pupuk_tanaman_hias-2.width-800.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Text(
                'Pupuk PLP juga disebut dengan pupuk langsung pakai. Pupuk ini tidak hanya sangat baik untuk tanaman hias, tetapi juga mempermudah perawatan tanaman hias dengan bentuk pupuk yang cair.',
                  textAlign: TextAlign.center,
                  maxLines: 10,
                  style: const TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(height: 40),
                Text(
                '3. Pupuk NPK Mutiara 16-16-16',
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(height: 15),
                Container(
                color: Colors.blueGrey[100],
                width: 200,
                height: 200,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.network(
                  'https://cdnt.orami.co.id/unsafe/468x780/cdn-cas.orami.co.id/parenting/images/pupuk_tanaman_hias-3.width-800.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Text(
                'Pupuk NPK Mutiara mengandung 16% N (Nitrogen), 16% P2O5 (Phospate), 16% K2O (Kalium), 0.5% MgO (Magnesium), dan 6% CaO (Kalsium). Pupuk ini termasuk dalam jenis pupuk tanaman hias yang terbaik.',
                  textAlign: TextAlign.center,
                  maxLines: 5,
                  style: const TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(height: 40),
                Text(
                '4. Pupuk Vitamin B1 Liquinox Start',
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(height: 15),
                Container(
                color: Colors.blueGrey[100],
                width: 200,
                height: 200,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.network(
                  'https://cdnt.orami.co.id/unsafe/468x571/cdn-cas.orami.co.id/parenting/images/pupuk_tanaman_hias-4.width-800.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Text(
                'Pupuk Vitamin B1 Liquinox Start punya kandungan utama P2O5 2.0%, Iron (Fe) 0.10% sebagai Fe-EDTA, Vitamin B1 (thiamine mononitrate) 0.10%, dan NAA 0.04% lho',
                  textAlign: TextAlign.center,
                  maxLines: 5,
                  style: const TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(height: 5),
              Text(
                'Kandungan ini sangat bagus dipakai pada saat repotting tanaman (pemindahan ke pot), ataupun di fase pertumbuhan tanaman.',
                  textAlign: TextAlign.center,
                  maxLines: 5,
                  style: const TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(height: 40),
                Text(
                '5. Herbafarm Pupuk Cair Bio Organik',
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(height: 15),
                Container(
                color: Colors.blueGrey[100],
                width: 200,
                height: 200,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.network(
                  'https://cdnt.orami.co.id/unsafe/468x468/cdn-cas.orami.co.id/parenting/images/pupuk_tanaman_hias-5.width-800.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Text(
                'Herbafarm adalah pupuk cair bio-organik yang diperkaya mikrobia (cair). Pupuk ini diproses melalui proses biological complex process (BCP).',
                  textAlign: TextAlign.center,
                  maxLines: 5,
                  style: const TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                'Pupuk Herbafarm mengandung unsur hara makro dan mikro yang sangat dibutuhkan tanaman hias, ada juga asam humat, asam fulvat, dan hormon tanaman.',
                  textAlign: TextAlign.center,
                  maxLines: 5,
                  style: const TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(height: 40),
            ],
        ),
      ),
    );
  }
}