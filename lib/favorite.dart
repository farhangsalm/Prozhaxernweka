// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_application_1/gshti/colorkan.dart';
import 'package:flutter_application_1/program/bashijava/java1tab.dart';

class Favorite extends StatefulWidget {
  final Java1 jav;

  Favorite({Key? key, required this.jav}) : super(key: key);

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  late Future<SharedPreferences> _prefs;
  late bool isBookmarked;

  @override
  void initState() {
    super.initState();
    _prefs = SharedPreferences.getInstance();
    _loadBookmarkStatus();
  }

  void _loadBookmarkStatus() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      isBookmarked = prefs.getBool('isBookmarked') ?? false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.indigo,
        title: Text('دڵخوازەکانم'),
      ),
      body: FutureBuilder<SharedPreferences>(
        future: SharedPreferences.getInstance(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }
          List<int> bookmarkedIndexes = [];
          for (int i = 0; i < 10; i++) {
            if (snapshot.data!.getBool('item$i') ?? false) {
              bookmarkedIndexes.add(i);
            }
          }
          return ListView.builder(
            itemCount: bookmarkedIndexes.length,
            itemBuilder: (context, index) {
              int itemIndex = bookmarkedIndexes[index];
              return GestureDetector(
                onTap: () {
                  // Implement your navigation logic here
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
                                      widget.jav.name, // Use widget.jav.total
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
                                        widget.jav.total, // Use widget.jav.name
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
                      Positioned(
                        top: 144,
                        left: 220,
                        child: Container(
                          height: 26,
                          child: Text(
                            widget.jav.publisher, // Use widget.jav.publisher
                            style:
                                TextStyle(fontFamily: "kurdish", fontSize: 18),
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
                          color: WITH1, // Placeholder color
                          child: Image.asset(
                            widget.jav.image, // Use widget.jav.image
                            fit: BoxFit.cover,
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
                              TextSpan(text: 'وانەی '), // Placeholder text
                              TextSpan(
                                text: widget.jav.wana, // Use widget.jav.wana
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
                          onPressed: () async {
                            SharedPreferences prefs = await _prefs;
                            setState(() {
                              isBookmarked = !isBookmarked;
                              prefs.setBool('item$itemIndex', isBookmarked);
                              if (isBookmarked) {
                                Fluttertoast.showToast(
                                    msg: 'زیادکرا بۆ دڵخوازەکانم');
                              } else {
                                Fluttertoast.showToast(
                                    msg: 'سڕایەوە لە دڵخوازەکانم');
                              }
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
