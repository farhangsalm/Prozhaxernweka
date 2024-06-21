// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/favorite.dart';
import 'package:flutter_application_1/gshti/colorkan.dart';
import 'package:flutter_application_1/gshti/gashti.dart';
import 'package:flutter_application_1/program2/c++/conplus.dart';
import 'package:flutter_application_1/program2/c++/contab.dart';
import 'package:flutter_application_1/program2/c++/guitab.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class cplusplus extends StatefulWidget {
  final Size size;
  final int itemIndex;
  final Cplus cplus;

  const cplusplus({
    Key? key,
    required this.size,
    required this.itemIndex,
    required this.cplus,
  }) : super(key: key);

  @override
  _cplusplusState createState() => _cplusplusState();
}

class _cplusplusState extends State<cplusplus> {
  bool isBookmarked = false;

  @override
  void initState() {
    super.initState();
    _loadBookmarkStatus();
  }

  void _loadBookmarkStatus() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      isBookmarked = prefs.getBool('item${widget.itemIndex}') ?? false;
    });
  }

  void _toggleBookmark() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      isBookmarked = !isBookmarked;
      prefs.setBool('item${widget.itemIndex}', isBookmarked);
      if (isBookmarked) {
        Fluttertoast.showToast(msg: 'زیادکرا بۆ دڵخوازەکانم');
        GestureDetector(
          // onTap: () {
          //   // Navigate to the desired page here
          //   Navigator.push(
          //     context,
          //     MaterialPageRoute(
          //       builder: (context) =>
          //           Favorite(), // Replace YOUTBE with your desired page
          //     ),
          //   );
          // },
        );
      } else {
        Fluttertoast.showToast(msg: 'سڕایەوە لە دڵخوازەکانم');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigate to the desired page here
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => plusyoutube(
                cplus: widget.cplus), // Replace YOUTBE with your desired page
          ),
        );
      },
      child: Container(
        width: double.infinity,
        height: 200,
        child: Stack(
          children: [
            Positioned(
              top: 10,
              left: 0,
              right: 0,
              child: Container(
                height: 160,
                padding: EdgeInsets.only(left: 10, top: 30),
                margin: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 49, 69, 83),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white12,
                      spreadRadius: 0.5,
                      blurRadius: 15,
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 15),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            widget.cplus.name,
                            style: TextStyle(
                              fontFamily: 'kurdish',
                              color: ORANG1,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 100),
                            child: Text(
                              textAlign: TextAlign.end,
                              widget.cplus.total,
                              style: TextStyle(
                                fontFamily: 'kurdishreg',
                                color: WITH1,
                                fontSize: 10,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 144, left: 243),
              child: Container(
                height: 26,
                child: Text(
                  widget.cplus.publisher,
                  style: TextStyle(fontFamily: "kurdish", fontSize: 18),
                ),
                decoration: BoxDecoration(
                  color: AWE,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(19),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 29,
              left: 30,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                height: 95,
                width: 95,
                child: Image.asset(
                  widget.cplus.image,
                  fit: BoxFit.cover,
                ),
                decoration: BoxDecoration(
                  color: WITH1,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 130, left: 45),
              child: RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontFamily: "kurdish",
                    color: Colors.white,
                    fontSize: 16,
                  ),
                  children: [
                    TextSpan(text: 'وانەی '),
                    TextSpan(
                      text: widget.cplus.wana,
                      style: TextStyle(color: Colors.white38),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: -2,
              right: 1,
              child: IconButton(
                color: AWE,
                icon: Icon(
                  isBookmarked
                      ? Icons.bookmark_added_sharp
                      : Icons.bookmark_add_sharp,
                ),
                onPressed: _toggleBookmark,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class plusyoutube extends StatefulWidget {
  const plusyoutube({Key? key, required this.cplus}) : super(key: key);
  final Cplus cplus;

  @override
  State<plusyoutube> createState() => _plusyoutubeState();
}

class _plusyoutubeState extends State<plusyoutube> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();

    _controller = YoutubePlayerController(
      initialVideoId: widget.cplus.video, // Replace with your video ID
      flags: YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
        isLive: false,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(130, 80, 90, 90),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Color.fromARGB(115, 34, 33, 33),
        title: IconButton(
          onPressed: () {
            gshti();
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white60,
            size: 30,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 350,
            decoration: BoxDecoration(
              color: rash,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(50),
                bottomLeft: Radius.circular(50),
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  right: 0,
                  left: 0,
                  child: Column(
                    children: [
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(
                                horizontal: 70,
                                vertical: 30,
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 0,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: rash,
                                    blurRadius: 7,
                                    spreadRadius: 0.5,
                                  ),
                                ],
                              ),
                              child: Image.asset(
                                widget.cplus.image,
                                width: 200,
                                height: 200,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.fromLTRB(20, 15, 0, 10),
            child: Text(
              widget.cplus.kurdi,
              style: TextStyle(fontFamily: "kurdish", color: Colors.white),
            ),
          ),
          Expanded(
            child: YoutubePlayerBuilder(
              player: YoutubePlayer(
                controller: _controller,
                showVideoProgressIndicator: true,
                progressIndicatorColor: Colors.amber,
                progressColors: ProgressBarColors(
                  playedColor: Colors.amber,
                  handleColor: Colors.amber,
                ),
              ),
              builder: (context, player) {
                return Column(
                  children: [
                    player,
                    // Add additional widgets here if needed
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}

class plusDetailsPage extends StatefulWidget {
  plusDetailsPage({
    Key? key,
  }) : super(key: key);

  @override
  _plusDetailsPageState createState() => _plusDetailsPageState();
}

class _plusDetailsPageState extends State<plusDetailsPage>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Color.fromARGB(115, 0, 0, 0),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromARGB(115, 34, 33, 33),
        title: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white60,
            size: 30,
          ),
        ),
      ),
      body: DefaultTabController(
        length: 2,
        child: Card(
          color: Colors.black26,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: 1,
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.1),
                ),
                child: TabBar(
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color.fromARGB(255, 23, 46, 63),
                  ),
                  controller: _tabController,
                  isScrollable: true,
                  labelPadding: EdgeInsets.symmetric(horizontal: 70),
                  tabs: [
                    Tab(
                      child: Text(
                        "consale",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Gui",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    ListView.builder(
                      itemCount: con.length,
                      itemBuilder: (context, index) => conpluse(
                        itemIndex: index,
                        con: con[index],
                        size: size,
                      ),
                    ),
                    ListView.builder(
                      itemCount: cplus.length,
                      itemBuilder: (context, index) => cplusplus(
                        itemIndex: index,
                        cplus: cplus[index],
                        size: size,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}
