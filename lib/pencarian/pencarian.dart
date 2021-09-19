import 'package:flutter/material.dart';
import 'package:jagocoding_wisatapedia/pencarian/pencarian_detail.dart';

class PagePencarian extends StatefulWidget {
  const PagePencarian({Key? key}) : super(key: key);

  @override
  _PagePencarianState createState() => _PagePencarianState();
}

class _PagePencarianState extends State<PagePencarian> {

  TextEditingController cari = TextEditingController();

  List<Map<dynamic, String>> filter = [];
  String query = '';
  bool isCari = true;

  _PagePencarianState() {
    cari.addListener(() {
      if (cari.text.isEmpty) {
        setState(() {
          isCari = true;
          query = '';
        });
      } else {
        setState(() {
          isCari = false;
          query = cari.text;
        });
      }
    });
  }

  final List<Map<dynamic, String>> rekom = [
    {
      'nama': 'Pantai Kuta',
      'lokasi': 'Denpasar, Bali',
      'gambar': 'images/boarding01.png',
    },
    {
      'nama': 'Raja Ampat',
      'lokasi': 'Papua, Papua Barat',
      'gambar': 'images/boarding02.png',
    },
    {
      'nama': 'Candi Borobudur',
      'lokasi': 'Magelang, Jawa Tengah',
      'gambar': 'images/borobudur.png',
    },
    {
      'nama': 'Taman Nasional Bromo Tengger Semeru',
      'lokasi': 'Jawa Timur',
      'gambar': 'images/bromo.png',
    },
    {
      'nama': 'Candi Prambanan',
      'lokasi': 'Sleman, Yogyakarta',
      'gambar': 'images/prambanan.png',
    },
    {
      'nama': 'Taman Mini Indonesia Indah',
      'lokasi': 'Jakarta Timur, Jakarta',
      'gambar': 'images/tmii.jpg',
    },
    {
      'nama': 'Museum Nasional Indonesia',
      'lokasi': 'Gambir, Jakarta Pusat',
      'gambar': 'images/museum.jpg',
    },
    {
      'nama': 'Trans Studio Bandung',
      'lokasi': 'Bandung, Jawa Barat',
      'gambar': 'images/transtudio.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffDCE5F0),
        appBar: AppBar(
          backgroundColor: Color(0xffDCE5F0),
          title: Column(
            children: [
              Container(
                height: 40,
                child: TextFormField(
                  controller: cari,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 10),
                      fillColor: Colors.white,
                      filled: true,
                      hintText: 'Temukan wisata favoritmu',
                      hintStyle: TextStyle(fontSize: 13, fontFamily: 'Ubuntu'),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide.none),
                      suffixIcon: Icon(Icons.search)),
                ),
              )
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  // color: Colors.white,
                ),
                child: isCari
                    ? ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: rekom.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            height: 90,
                            margin: EdgeInsets.only(bottom: 3),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) => PagePencarianDetail()));
                              },
                              child: Card(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(5),
                                      child: Image.asset(
                                        '${rekom[index]['gambar']}',
                                        fit: BoxFit.cover,
                                        height:
                                            MediaQuery.of(context).size.height,
                                        width: 115,
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 5),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              '${rekom[index]['nama']}',
                                              style: TextStyle(
                                                fontSize: 12,
                                                fontFamily: 'Ubuntu',
                                                color: Colors.black,
                                              ),
                                            ),
                                            SizedBox(height: 10),
                                            Row(
                                              children: [
                                                Image.asset(
                                                  'images/lokasi.png',
                                                  height: 10,
                                                  width: 10,
                                                ),
                                                SizedBox(width: 2),
                                                Text(
                                                  '${rekom[index]['lokasi']}',
                                                  style: TextStyle(
                                                    fontSize: 10,
                                                    fontFamily: 'Ubuntu',
                                                    color: Color(0xff928B8B),
                                                  ),
                                                )
                                              ],
                                            ),
                                            SizedBox(height: 8),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              // crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Row(
                                                  // crossAxisAlignment: CrossAxisAlignment.center,
                                                  children: [
                                                    Icon(
                                                      Icons.star,
                                                      color: Color(0xffF6DA43),
                                                      size: 14,
                                                    ),
                                                    SizedBox(width: 2),
                                                    Text(
                                                      '5',
                                                      style: TextStyle(
                                                        fontSize: 10,
                                                        fontFamily: 'Ubuntu',
                                                        color:
                                                            Color(0xff928B8B),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                                Row(
                                                  children: [
                                                    Text(
                                                      '1620+ review',
                                                      style: TextStyle(
                                                        fontSize: 10,
                                                        fontFamily: 'Ubuntu',
                                                        fontStyle:
                                                            FontStyle.italic,
                                                        color:
                                                            Color(0xff928B8B),
                                                      ),
                                                    )
                                                  ],
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      )
                    : performSearch(),
              ),
            ],
          ),
        ));
  }

  Widget performSearch() {
    filter = [];
    for (int i = 0; i < rekom.length; i++) {
      var item = rekom[i];
      if (item['nama']!.toLowerCase().contains(query.toLowerCase())) {
        filter.add(item);
      }
    }
    return hasilPencarian();
  }

  Widget hasilPencarian() {
    return ListView.builder(
      itemCount: filter.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Container(
          padding: EdgeInsets.only(left: 3, right: 12),
          child: InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => PagePencarianDetail()));
            },
            child: Card(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.asset(
                      '${filter[index]['gambar']}',
                      fit: BoxFit.cover,
                      height: 73,
                      width: 115,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(left: 10, top: 8, right: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${filter[index]['nama']}',
                            style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'Ubuntu',
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Image.asset(
                                'images/lokasi.png',
                                height: 10,
                                width: 10,
                              ),
                              SizedBox(width: 2),
                              Text(
                                '${filter[index]['lokasi']}',
                                style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'Ubuntu',
                                  color: Color(0xff928B8B),
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                // crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Color(0xffF6DA43),
                                    size: 14,
                                  ),
                                  SizedBox(width: 2),
                                  Text(
                                    '5',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontFamily: 'Ubuntu',
                                      color: Color(0xff928B8B),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    '1620+ review',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontFamily: 'Ubuntu',
                                      fontStyle: FontStyle.italic,
                                      color: Color(0xff928B8B),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
