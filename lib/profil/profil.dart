import 'package:flutter/material.dart';
import 'package:jagocoding_wisatapedia/login.dart';
import 'package:jagocoding_wisatapedia/profil/profil_edit.dart';
import 'package:jagocoding_wisatapedia/profil/profil_wisata_favorit.dart';

class PageProfil extends StatefulWidget {
  const PageProfil({Key? key}) : super(key: key);

  @override
  _PageProfilState createState() => _PageProfilState();
}

class _PageProfilState extends State<PageProfil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffDCE5F0),
      appBar: _emptyAppBar(),
      body: Column(
        children: [
          SizedBox(height: 10),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 150,
            color: Colors.white,
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Stack(alignment: Alignment.center, children: [
              Positioned(
                  top: 0,
                  right: 0,
                  child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => PageProfilEdit()));
                      },
                      child: Icon(Icons.settings))),
              Positioned(
                bottom: 0,
                child: Column(
                  children: [
                    CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage('images/foto.jpg')
                        // child:
                        ),
                    SizedBox(height: 10),
                    Text(
                      'Ulul Azmi',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Ubuntu',
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
              ),
            ]),
          ),
          SizedBox(height: 8),
          Container(
            color: Colors.white,
            // padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              children: [
                Container(
                  height: 45,
                  child: ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => PageProfilWisataFavorit()));
                    },
                    leading: Icon(
                      Icons.favorite,
                      color: Colors.red,
                    ),
                    minLeadingWidth: 10,
                    title: Text(
                      'Favorit',
                      style: TextStyle(
                          fontSize: 13,
                          fontFamily: 'Ubuntu',
                          color: Colors.black),
                    ),
                    trailing: Icon(
                      Icons.arrow_right,
                      color: Color(0xff2484DF),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Divider(
                    color: Colors.grey,
                    thickness: 0.5,
                  ),
                ),
                Container(
                  height: 45,
                  child: ListTile(
                    onTap: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (_) => PageLogin()));
                    },
                    leading: Icon(
                      Icons.logout,
                      color: Color(0xff2484DF),
                    ),
                    minLeadingWidth: 10,
                    title: Text(
                      'Logout',
                      style: TextStyle(
                          fontSize: 13,
                          fontFamily: 'Ubuntu',
                          color: Colors.black),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Divider(
                    color: Colors.grey,
                    thickness: 0.5,
                  ),
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
        ],
      ),
    );
  }

  PreferredSize _emptyAppBar() {
    return PreferredSize(
      preferredSize: Size.fromHeight(0.0),
      child: AppBar(backgroundColor: Colors.white),
    );
  }
}
