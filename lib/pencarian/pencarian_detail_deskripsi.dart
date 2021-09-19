import 'package:flutter/material.dart';

class PagePencarianDetailDeskripsi extends StatefulWidget {
  TabController? tabcontroller;
  PagePencarianDetailDeskripsi(this.tabcontroller);

  @override
  _PagePencarianDetailDeskripsiState createState() => _PagePencarianDetailDeskripsiState();
}

class _PagePencarianDetailDeskripsiState extends State<PagePencarianDetailDeskripsi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffDCE5F0),
      body:  Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Pantai Kuta',
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                fontFamily: 'Ubuntu',
                color: Colors.black,
              ),
            ),
            SizedBox(height: 5),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
              style: TextStyle(
                fontSize: 12,
                fontFamily: 'Ubuntu',
                color: Colors.black,
              ),
            ),
            SizedBox(height: 15),
            Text(
              'Jadwal Buka',
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                fontFamily: 'Ubuntu',
                color: Colors.black,
              ),
            ),
            SizedBox(height: 5),
            Text(
              'Senin 07.00 - 22.00',
              style: TextStyle(
                fontSize: 12,
                fontFamily: 'Ubuntu',
                color: Colors.black,
              ),
            ),
            SizedBox(height: 3),
            Text(
              'Selasa 07.00 - 22.00',
              style: TextStyle(
                fontSize: 12,
                fontFamily: 'Ubuntu',
                color: Colors.black,
              ),
            ),
            SizedBox(height: 3),
            Text(
              'Rabu 07.00 - 22.00',
              style: TextStyle(
                fontSize: 12,
                fontFamily: 'Ubuntu',
                color: Colors.black,
              ),
            ),
            SizedBox(height: 3),
            Text(
              'Kamis 07.00 - 22.00',
              style: TextStyle(
                fontSize: 12,
                fontFamily: 'Ubuntu',
                color: Colors.black,
              ),
            ),
            SizedBox(height: 3),
            Text(
              'Jumat 07.00 - 22.00',
              style: TextStyle(
                fontSize: 12,
                fontFamily: 'Ubuntu',
                color: Colors.black,
              ),
            ),
            SizedBox(height: 3),
            Text(
              'Sabtu 07.00 - 22.00',
              style: TextStyle(
                fontSize: 12,
                fontFamily: 'Ubuntu',
                color: Colors.black,
              ),
            ),
            SizedBox(height: 3),
            Text(
              'Minggu 07.00 - 22.00',
              style: TextStyle(
                fontSize: 12,
                fontFamily: 'Ubuntu',
                color: Colors.black,
              ),
            ),
            SizedBox(height: 15),
            Text(
              'Biaya Masuk',
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                fontFamily: 'Ubuntu',
                color: Colors.black,
              ),
            ),
            SizedBox(height: 5),
            Text(
              'Tanpa Biaya Masuk',
              style: TextStyle(
                fontSize: 12,
                fontFamily: 'Ubuntu',
                color: Colors.black,
              ),
            ),
            SizedBox(height: 15),
            Text(
              'Keterangan Lainnya',
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                fontFamily: 'Ubuntu',
                color: Colors.black,
              ),
            ),
            SizedBox(height: 5),
            Text(
              'Ada biaya parkir bagi yang membawa kendaraan bermotor',
              style: TextStyle(
                fontSize: 12,
                fontFamily: 'Ubuntu',
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
