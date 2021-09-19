import 'package:flutter/material.dart';
import 'package:jagocoding_wisatapedia/beranda/beranda.dart';
import 'package:jagocoding_wisatapedia/pencarian/pencarian.dart';
import 'package:jagocoding_wisatapedia/profil/profil.dart';

class PageNavBottomBar extends StatefulWidget {
  const PageNavBottomBar({Key? key}) : super(key: key);

  @override
  _PageNavBottomBarState createState() => _PageNavBottomBarState();
}

class _PageNavBottomBarState extends State<PageNavBottomBar> {
  int page = 0;

  final List<Widget> _listPage = [PageBeranda(), PagePencarian(), PageProfil()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _listPage[page],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        onTap: Tap,
        currentIndex: page,
        selectedItemColor: Color(0xff2484DF),
        unselectedItemColor: Color(0xff808080),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_searching),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline_rounded),
            label: '',
          ),
        ],
      ),
    );
  }

  void Tap(int value) {
    setState(() {
      page = value;
    });
  }
}
