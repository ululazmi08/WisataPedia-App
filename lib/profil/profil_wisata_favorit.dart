import 'package:flutter/material.dart';
import 'package:jagocoding_wisatapedia/pencarian/pencarian_detail.dart';

class PageProfilWisataFavorit extends StatefulWidget {
  const PageProfilWisataFavorit({Key? key}) : super(key: key);

  @override
  _PageProfilWisataFavoritState createState() => _PageProfilWisataFavoritState();
}

class _PageProfilWisataFavoritState extends State<PageProfilWisataFavorit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffDCE5F0),
        appBar: AppBar(
          title: Text(
            'Wisata Favorit',
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
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: Column(
            children: [
              SizedBox(height: 10),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 4,
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
                                'images/boarding01.png',
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Pantai Kuta',
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
                                          'Denpasar, Bali}',
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
                    ),
                  );
                },
              ),
            ],
          ),
        ));
  }
}
