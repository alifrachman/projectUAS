import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
      appBar: AppBar(
        title: const Text('Profil'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 18),
          child: Card(
            child: Column(
              children: [
                viewGambar(),
                Container(
                  color: Colors.green[100],
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18),
                    child: Column(
                      children: [
                        const SizedBox(height: 18),
                        widgetInformasi(
                          title: 'Nama Lengkap',
                          value: 'Muhammad Alif Rachman F',
                        ),
                        widgetInformasi(
                          title: 'Nomor Telepon',
                          value: '+62 821-4243-2391',
                        ),
                        widgetInformasi(
                          title: 'Alamat Email',
                          value: 'alifrachman77@gmail.com',
                          divider: false,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Column viewGambar() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          color: Colors.grey[200],
          height: 260,
          width: double.infinity,
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(6),
              topRight: Radius.circular(6),
            ),
            child: Image.network(
              'https://images.unsplash.com/photo-1544502062-f82887f03d1c?ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8c2lsaG91ZXR0ZXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80',
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }

  Column widgetInformasi(
      {required String title, required String value, bool divider = true}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: Color(0xFF000F30),
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    value,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: divider ? Divider(thickness: 0.8) : SizedBox(),
        ),
      ],
    );
  }
}
