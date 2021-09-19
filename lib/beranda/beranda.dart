import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

final List<String> imgList = [
  'images/boarding01.png',
  'images/boarding02.png',
  'images/borobudur.png',
];

class PageBeranda extends StatefulWidget {
  const PageBeranda({Key? key}) : super(key: key);

  @override
  _PageBerandaState createState() => _PageBerandaState();
}

class _PageBerandaState extends State<PageBeranda> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

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
      'nama': 'Taman Nasional Bromo Tengger Semeru Semeru Semeru ',
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
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffDCE5F0),
      appBar: AppBar(
        title: Text(
          'Wisata Pedia',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            fontFamily: 'Ubuntu',
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              CarouselSlider(
                items: imageSliders,
                carouselController: _controller,
                options: CarouselOptions(
                    viewportFraction: 1, //hanya menampilkan 1 bagian
                    autoPlay: true, //gammbar bergerak(slide) otomatis
                    // enlargeCenterPage: true, //membesar ketika slide
                    aspectRatio: 2.2,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _current = index;
                      });
                    }),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: imgList.asMap().entries.map((entry) {
                  return GestureDetector(
                    onTap: () => _controller.animateToPage(entry.key),
                    child: Container(
                      width: 8.0,
                      height: 8.0,
                      margin: EdgeInsets.only(left: 10, top: 10),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: (_current == entry.key
                            ? Color(0xff2484DF)
                            : Color(0xFF74B2E8)),
                      ),
                    ),
                  );
                }).toList(),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Row(
                  children: [
                    Text(
                      'Rekomendasi',
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Ubuntu',
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 160,
                padding: EdgeInsets.only(left: 7),
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: rekom.length,
                    itemBuilder: (context, index) {
                      if (index < 3) {
                        return Container(
                          width: 145,
                          margin: EdgeInsets.only(left: 4, right: 3),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          // color: Colors.black,
                          child: Card(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(5),
                                  child: Image.asset(
                                    '${rekom[index]['gambar']}',
                                    fit: BoxFit.cover,
                                    height: 100,
                                    width: double.maxFinite,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Text(
                                    '${rekom[index]['nama']}',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: 'Ubuntu',
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 8),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        'images/lokasi.png',
                                        height: 10,
                                        width: 10,
                                      ),
                                      SizedBox(width: 5),
                                      Text(
                                        '${rekom[index]['lokasi']}',
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontFamily: 'Ubuntu',
                                            color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      }
                      return Container();
                    }),
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Row(
                  children: [
                    Text(
                      'Wisata lainnya untukmu',
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Ubuntu',
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.only(left: 8, right: 3),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                ),
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: rekom.length,
                  itemBuilder: (BuildContext context, int index) {
                    if (index > 2) {
                      return Container(
                        height: 90,
                        padding: EdgeInsets.only(left: 3, right: 12),
                        margin: EdgeInsets.only(bottom: 3),
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
                                  height: MediaQuery.of(context).size.height,
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
                                            MainAxisAlignment.spaceBetween,
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
                      );
                    }
                    return Container();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  final List<Widget> imageSliders = imgList
      .map(
        (item) => Container(
          child: Container(
            child: ClipRRect(
              child: Stack(
                alignment: Alignment.centerLeft,
                children: <Widget>[
                  Image.asset(
                    item,
                    fit: BoxFit.cover,
                    height: double.maxFinite,
                    width: double.maxFinite,
                  ),
                  Positioned(
                    bottom: 60,
                    left: 20,
                    child: Column(
                      children: [
                        Text(
                          'Destinasi yang menginspirasi\ndalam jangkauan Anda',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Ubuntu',
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      )
      .toList();
}
