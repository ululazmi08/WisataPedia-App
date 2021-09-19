import 'package:flutter/material.dart';
import 'package:jagocoding_wisatapedia/pencarian/pencarian_detail_deskripsi.dart';
import 'package:jagocoding_wisatapedia/pencarian/pencarian_detail_lokasi.dart';

class PagePencarianDetail extends StatefulWidget {
  const PagePencarianDetail({Key? key}) : super(key: key);

  @override
  _PagePencarianDetailState createState() => _PagePencarianDetailState();
}

class _PagePencarianDetailState extends State<PagePencarianDetail>
    with SingleTickerProviderStateMixin {
  bool changed = true;
  TabController? tabcontroll;

  @override
  void initState() {
    tabcontroll = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabcontroll?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _emptyAppBar(),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  'images/boarding01.png',
                  fit: BoxFit.cover,
                ),
              ),
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back),
              ),
              Positioned(
                right: 10,
                top: 10,
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.white,
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        changed = !changed;
                      });
                    },
                    icon: Icon(
                      Icons.favorite,
                      color: changed ? Colors.grey : Colors.red,
                    ),
                  ),
                ),
              )
            ],
          ),
          TabBar(
            controller: tabcontroll,
            tabs: [
              Tab(
                child: Text(
                  'Deskripsi',
                  style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'Ubuntu',
                    color: Colors.black,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'Lokasi',
                  style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'Ubuntu',
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Container(
              child: TabBarView(
                controller: tabcontroll,
                children: [
                  PagePencarianDetailDeskripsi(tabcontroll),
                  PagePencarianDetailLokasi(tabcontroll)
                ],
              ),
            ),
          )
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
