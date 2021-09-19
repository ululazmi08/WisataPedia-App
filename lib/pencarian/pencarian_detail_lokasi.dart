import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class PagePencarianDetailLokasi extends StatefulWidget {
  TabController? tabcontroller;
  PagePencarianDetailLokasi(this.tabcontroller);

  @override
  _PagePencarianDetailLokasiState createState() =>
      _PagePencarianDetailLokasiState();
}

class _PagePencarianDetailLokasiState extends State<PagePencarianDetailLokasi> {
  GoogleMapController? mapController;
  final LatLng pantai = LatLng(-8.7184868, 115.1685974);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffDCE5F0),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              'Lokasi Pantai Kuta',
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                fontFamily: 'Ubuntu',
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(height: 10),
          Container(
            height: 250,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(horizontal: 10),
            // color: Colors.black,
            child: Center(
              child: GoogleMap(
                initialCameraPosition: CameraPosition(target: pantai, zoom: 15),
                markers: <Marker>[
                  Marker(
                      markerId: MarkerId('Titik Lokasi'),
                      position: pantai,
                      infoWindow: InfoWindow(title: 'Pantai Kuta'))
                ].toSet(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
