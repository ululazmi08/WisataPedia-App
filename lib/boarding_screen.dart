import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:jagocoding_wisatapedia/login.dart';

class PageOnBoardingScreen extends StatefulWidget {
  const PageOnBoardingScreen({Key? key}) : super(key: key);

  @override
  _PageOnBoardingScreenState createState() => _PageOnBoardingScreenState();
}

class _PageOnBoardingScreenState extends State<PageOnBoardingScreen> {
  final introKey = GlobalKey<IntroductionScreenState>();

  @override
  Widget build(BuildContext context) {
    const pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          fontFamily: 'Ubuntu',
          color: Colors.white),
    );

    return IntroductionScreen(
      key: introKey,
      scrollPhysics: ClampingScrollPhysics(),
      globalHeader: Align(
        alignment: Alignment.center,
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'images/logo.png',
                    height: 64,
                    width: 81,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      pages: [
        PageViewModel(
          title: "Jelajahi keindahan alam\nIndonesia",
          body: "",
          image: Stack(children: [
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/boarding01.png'),
                    fit: BoxFit.cover),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.black.withOpacity(0.2),
            )
          ]),
          decoration: pageDecoration.copyWith(
            contentMargin: const EdgeInsets.symmetric(horizontal: 16),
            fullScreen: true,
            bodyFlex: 1,
            imageFlex: 2,
          ),
        ),
        PageViewModel(
          title: "Menunjukkan kepada Anda\nindahnya dunia",
          body: '',
          image: Stack(children: [
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/boarding02.png'),
                    fit: BoxFit.cover),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.black.withOpacity(0.3),
            )
          ]),
          decoration: pageDecoration.copyWith(
            contentMargin: const EdgeInsets.symmetric(horizontal: 16),
            fullScreen: true,
            bodyFlex: 1,
            imageFlex: 2,
          ),
        ),
        PageViewModel(
          title: "Mari temukan perjalanan\nAnda!",
          bodyWidget: Padding(
            padding: const EdgeInsets.only(top: 35),
            child: MaterialButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (_) => PageLogin()));
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              height: 40,
              minWidth: 171,
              child: Text(
                'Jelajahi sekarang',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Ubuntu',
                    color: Colors.white),
              ),
              color: Color(0xff2484DF),
            ),
          ),
          image: Stack(children: [
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/boarding03.png'),
                    fit: BoxFit.cover),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.black.withOpacity(0.3),
            )
          ]),
          decoration: pageDecoration.copyWith(
            contentMargin: const EdgeInsets.symmetric(horizontal: 16),
            fullScreen: true,
            bodyFlex: 1,
            imageFlex: 2,
          ),
        ),
      ],
      showSkipButton: true,
      skipFlex: 0,
      nextFlex: 0,
      skip: const Text(
        'Lewati',
        style: TextStyle(
          fontSize: 12,
          fontFamily: 'Ubuntu',
          color: Colors.white,
        ),
      ),
      next: const Text(
        'Selanjutnya',
        style: TextStyle(
          fontSize: 12,
          fontFamily: 'Ubuntu',
          color: Colors.white,
        ),
      ),
      nextColor: Colors.transparent,
      showNextButton: false,
      showDoneButton: false,
      dotsDecorator: const DotsDecorator(
        size: Size(13, 13),
        color: Color(0xFF74B2E8),
        activeColor: Color(0xff2484DF),
        activeSize: Size(22, 13),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
    );
  }
}
