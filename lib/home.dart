import 'package:flutter/material.dart';
import 'package:concentric_transition/concentric_transition.dart';
import 'package:flutter_application_1/homescreen.dart';
import 'package:flutter_application_1/page_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final pages = [
    PageData(
      image: 'images/hi.png',
      title1:
          '  ئه‌پڵیكه‌یشنێك پڕاوپڕ له‌سوود و زانیاری بۆ خۆ به‌هێزكردن و بره‌ودان به‌هێزر و تواناكانی خۆوت',
      title: 'ده‌ستپێكه‌...!',
      bgColor: Colors.indigo.withOpacity(0.8),
      textColor: Colors.white,
    ),
    PageData(
      image: 'images/stop.png',
      title: 'Programmer',
      title1:
          'فێری پڕۆگرامینگ ببه‌ له‌ڕێگه‌ی كۆرسی تایبه‌ت به‌زمانی شیرینی كوردی بۆ هه‌موو زمانه‌كانی كۆدینگ',
      bgColor: Color(0xFFFFFFFF),
      textColor: Colors.red,
    ),
    PageData(
      image: 'images/design.png',
      title: 'Design UI|UX',
      title1:
          'فێری دیزاین ببه‌ له‌ڕێگه‌ی مۆباله‌كه‌ت له‌ماڵه‌كه‌یی  به‌ كۆرسی زمانی كوردی  به‌بێ هیچ بڕه‌ پاره‌یه‌ك',
      bgColor: Colors.pink.withOpacity(0.5),
      textColor: Colors.white,
    ),
    PageData(
      image: 'images/search.png',
      title: 'چیتر پێویست ناكات بگه‌ڕێی',
      title1:
          'هه‌موو ئه‌وه‌ی ده‌ته‌وێت له‌ هه‌ر بوارێك و هه‌ر كارێك و هه‌ر كۆرسێك لێره‌دا به‌رده‌سته‌و پێویست ناكات كاتت له‌ گه‌ڕاندا به‌سه‌رببه‌یت و كاته‌كانت بگه‌ڕێنه‌وه‌',
      bgColor: Colors.white.withOpacity(0.8),
      textColor: Colors.green,
    ),
  ];

  _storeOnBoardInfo() async {
    int isViewes = 0;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('omBoard', isViewes);
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: ConcentricPageView(
        colors: pages.map((p) => p.bgColor).toList(),
        radius: screenWidth * 0.1,
        nextButtonBuilder: (context) => Padding(
          padding: EdgeInsets.only(left: 3),
          child: InkWell(
            onTap: () {
              _storeOnBoardInfo();
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => HomeScreen(),
              ));
            },
            child: Icon(
              Icons.navigate_next,
              size: screenWidth * 0.2,
            ),
          ),
        ),
        itemBuilder: (index) {
          final page = pages[index % pages.length];
          return SafeArea(
            child: PageWidget(page: page),
          );
        },
      ),
    );
  }
}

class PageWidget extends StatelessWidget {
  final PageData page;

  const PageWidget({Key? key, required this.page}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    space(double p) => SizedBox(height: screenHeight * p / 150);
    return Column(
      children: [
        space(9),
        Image.asset(
          page.image.toString(),
        ),
        space(2),
        _Text(
          page: page,
          style: TextStyle(
            fontSize: screenHeight * 0.046,
          ),
        ),
      ],
    );
  }
}

class _Text extends StatelessWidget {
  const _Text({
    Key? key,
    required this.page,
    this.style,
  }) : super(key: key);

  final PageData page;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.7,
            child: Center(
              child: Text(
                page.title.toString(),
                style: TextStyle(color: page.textColor, fontSize: 20),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            child: Text(
              textAlign: TextAlign.center,
              page.title1.toString(),
              style: TextStyle(color: page.textColor),
            ),
          ),
        ],
      ),
    );
  }
}
