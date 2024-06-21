// ignore_for_file: camel_case_types

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/gshti/colorkan.dart';
import 'package:flutter_application_1/program2/consale.dart';
import 'package:flutter_application_1/program2/contab.dart';
import 'package:flutter_application_1/program2/sharbtab.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:share_plus/share_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class csharb extends StatefulWidget {
  final Size size;
  final int itemIndex;
  final Sharb sharb;

  const csharb({
    Key? key,
    required this.size,
    required this.itemIndex,
    required this.sharb,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _csharbState createState() => _csharbState();
}

class _csharbState extends State<csharb> {
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
            builder: (context) => cyoutube(
                sharb: widget.sharb), // Replace YOUTBE with your desired page
          ),
        );
      },
      // ignore: sized_box_for_whitespace
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
                padding: const EdgeInsets.only(left: 10, top: 30),
                margin: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 49, 69, 83),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
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
                      margin: const EdgeInsets.only(right: 15),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            widget.sharb.name,
                            style: const TextStyle(
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
                              widget.sharb.total,
                              style: const TextStyle(
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
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 144, left: 220),
              child: Container(
                height: 26,
                // ignore: sort_child_properties_last
                child: Text(
                  widget.sharb.publisher,
                  style: const TextStyle(fontFamily: "kurdish", fontSize: 18),
                ),
                decoration: const BoxDecoration(
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
                decoration: BoxDecoration(
                  color: WITH1,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset(
                  widget.sharb.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 130, left: 45),
              child: RichText(
                text: TextSpan(
                  style: const TextStyle(
                    fontFamily: "kurdish",
                    color: Colors.white,
                    fontSize: 16,
                  ),
                  children: [
                    const TextSpan(text: 'وانەی '),
                    TextSpan(
                      text: widget.sharb.wana,
                      style: const TextStyle(color: Colors.white38),
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

class cyoutube extends StatefulWidget {
  const cyoutube({Key? key, required this.sharb}) : super(key: key);
  final Sharb sharb;

  @override
  State<cyoutube> createState() => _cyoutubeState();
}

class _cyoutubeState extends State<cyoutube> {
  late YoutubePlayerController _controller;
  final ScrollController _scrollController = ScrollController();
  bool isContainerVisible = false;
  bool isContentExpanded = false; // Add this state variable
  final DatabaseReference ref = FirebaseDatabase.instance.ref('myapp');
  late Future<SharedPreferences> prefs = SharedPreferences.getInstance();
  String userId = '';
  bool isLiked = false;
  int likeCount = 0;

  // Override the initState() method
  @override
  void initState() {
    super.initState();

    // Initialize the YoutubePlayerController
    _controller = YoutubePlayerController(
      initialVideoId: widget.sharb.video, // Replace with your video ID
      flags: const YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
        isLive: false,
      ),
    );

    // Get user preferences and set userId
    prefs.then((SharedPreferences prefs) {
      setState(() {
        userId = prefs.getString('userId') ??
            'user_${DateTime.now().millisecondsSinceEpoch}';
        prefs.setString('userId', userId);
      });
    });

    // Load the like state from shared preferences
    _loadLikeState();
  }

  // Function to toggle the visibility of the container
  void toggleContainerVisibility() {
    setState(() {
      isContainerVisible = !isContainerVisible;
    });
  }

  // Function to toggle the content visibility
  void toggleContentVisibility() {
    setState(() {
      isContentExpanded = !isContentExpanded;
    });
  }

  // Function to scroll to the end
  void _scrollToEnd() {
    _scrollController.animateTo(
      _scrollController.position.maxScrollExtent,
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }

  // Function to copy text to clipboard
  void copyText() {
    Clipboard.setData(ClipboardData(text: widget.sharb.content));
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text(
          'تیکستکە کۆپی کرا',
          selectionColor: Colors.blue,
        ),
      ),
    );
  }

  // Function to save like state to shared preferences
  Future<void> _saveLikeState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isLiked_${widget.sharb.video}', isLiked);
  }

  // Function to load like state from shared preferences
  Future<void> _loadLikeState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      isLiked = prefs.getBool('isLiked_${widget.sharb.video}') ?? false;
    });
  }

  // Function to update the favorite count
  void updateFavoriteCount(DataSnapshot snapshot) async {
    String itemKey = snapshot.key!;
    int currentCount = snapshot.child('likeCount').value as int? ?? 0;
    Map like = snapshot.child('like').value as Map? ?? {};
    bool isLiked = like[userId] == true;

    if (isLiked) {
      currentCount -= 1;
      like.remove(userId);
    } else {
      currentCount += 1;
      like[userId] = true;
    }

    await ref.child(itemKey).update({
      'likeCount': currentCount,
      'like': like,
    });

    setState(() {
      this.isLiked = !isLiked;
      likeCount = currentCount;
    });

    _saveLikeState();
  }

  // Override the build method to construct the widget
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF212529),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: const Color(0xFF121212),
        title: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white60,
            size: 30,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 350,
              decoration: const BoxDecoration(
                color: Color(0xFF282C34),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(50),
                  bottomLeft: Radius.circular(50),
                ),
              ),
              child: YoutubePlayer(
                controller: _controller,
                showVideoProgressIndicator: true,
                progressIndicatorColor: Colors.amber,
                progressColors: const ProgressBarColors(
                  playedColor: Colors.amber,
                  handleColor: Colors.amber,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 15, 0, 10),
              child: Text(
                widget.sharb.kurdi,
                style: const TextStyle(
                  fontFamily: "kurdish",
                  fontSize: 14.7,
                  color: Colors.white,
                ),
              ),
            ),
            const Directionality(
              textDirection: TextDirection.rtl,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: Text(
                        'وێنەکانی چاڤە',
                        style: TextStyle(color: AWE),
                      ),
                    ),
                    Icon(
                      Icons.arrow_back_ios_new_outlined,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              controller: _scrollController,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    _buildImageButton('images/jav1.png', () {
                      // Handle video title input action
                    }),
                    const SizedBox(width: 20),
                    _buildImageButton('images/jav2.jpg', () {
                      // Handle description input action
                    }),
                    const SizedBox(width: 20),
                    _buildImageButton('images/jav3.png', () {
                      // Handle category selection action
                    }),
                  ],
                ),
              ),
            ),
            Directionality(
              textDirection: TextDirection.rtl,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: Text(
                            'باسکردنی چاڤە',
                            style: TextStyle(color: AWE, fontSize: 15),
                          ),
                        ),
                        IconButton(
                          onPressed: toggleContainerVisibility,
                          icon: Icon(
                            isContainerVisible
                                ? Icons.keyboard_arrow_down_sharp
                                : Icons.keyboard_arrow_up_outlined,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                      ],
                    ),
                    Visibility(
                      visible: isContainerVisible,
                      child: Container(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            RichText(
                              text: TextSpan(
                                text: isContentExpanded
                                    ? widget.sharb.content
                                    : widget.sharb.content.substring(0, 169) +
                                        '... ',
                                style: const TextStyle(
                                    color: Colors.white, fontFamily: 'kurdish'),
                                children: [
                                  TextSpan(
                                    text: isContentExpanded
                                        ? 'زیاتر بەبینە '
                                        : 'دواتر',
                                    style: TextStyle(
                                      color: isContentExpanded
                                          ? Colors.red
                                          : Colors.blue,
                                    ),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = toggleContentVisibility,
                                  ),
                                ],
                              ),
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(children: [
                                Row(
                                  children: [
                                    Text('لەبەرگرتنەوە',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 10)),
                                    IconButton(
                                      onPressed: copyText,
                                      icon: const Icon(Icons.copy,
                                          color: Colors.blue, size: 18),
                                    ),
                                    Row(
                                      children: [
                                        Text('هاوبەشکردن',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 10)),
                                        IconButton(
                                          onPressed: () {
                                            Share.share(widget.sharb.content);
                                          },
                                          icon: const Icon(
                                            Icons.share,
                                            color: Colors.blue,
                                            size: 18,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 1),
                                      child: Text('بەدڵبوون',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10)),
                                    ),
                                    StreamBuilder(
                                      stream:
                                          ref.child(widget.sharb.video).onValue,
                                      builder: (context, snapshot) {
                                        if (snapshot.hasData &&
                                            !snapshot.hasError &&
                                            snapshot.data!.snapshot.value !=
                                                null) {
                                          final dataSnapshot =
                                              snapshot.data!.snapshot;
                                          final likeData = dataSnapshot
                                              .child('like')
                                              .value as Map?;
                                          final isLiked =
                                              likeData?[userId] == true;
                                          final likeCount = dataSnapshot
                                                  .child('likeCount')
                                                  .value as int? ??
                                              0;
                                          return Row(
                                            children: [
                                              IconButton(
                                                color: Colors.blue,
                                                iconSize: 18,
                                                icon: Icon(
                                                  isLiked
                                                      ? Icons.thumb_up
                                                      : Icons.thumb_up_outlined,
                                                ),
                                                onPressed: () {
                                                  updateFavoriteCount(
                                                      dataSnapshot);
                                                },
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 5),
                                                child: Text(
                                                  '$likeCount',
                                                  style: const TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 12,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          );
                                        } else {
                                          return Row(
                                            children: [
                                              IconButton(
                                                color: Colors.blue,
                                                icon: const Icon(
                                                    Icons.thumb_up_outlined),
                                                onPressed: () {
                                                  ref
                                                      .child(widget.sharb.video)
                                                      .once()
                                                      .then((snapshot) {
                                                    updateFavoriteCount(
                                                        snapshot.snapshot);
                                                  });
                                                },
                                              ),
                                              const SizedBox(width: 5),
                                              const Text(
                                                '0',
                                                style: TextStyle(
                                                  color: Colors.blue,
                                                  fontSize: 16,
                                                ),
                                              ),
                                            ],
                                          );
                                        }
                                      },
                                    ),
                                  ],
                                ),
                              ]),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Function to build image button
  Widget _buildImageButton(String imagePath, VoidCallback onPressed) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
        elevation: 5,
        shadowColor: Colors.black,
      ),
      child: Image.asset(
        imagePath,
        fit: BoxFit.cover,
        width: 200, // Adjust width and height as needed
        height: 120,
      ),
    );
  }

  // Override the dispose method to dispose controllers
  @override
  void dispose() {
    _controller.dispose();
    _scrollController.dispose();
    super.dispose();
  }
}

// ignore: camel_case_types
class sharbDetailsPage extends StatefulWidget {
  const sharbDetailsPage({
    Key? key,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _sharbDetailsPageState createState() => _sharbDetailsPageState();
}

// ignore: camel_case_types
class _sharbDetailsPageState extends State<sharbDetailsPage>
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
      backgroundColor: const Color.fromARGB(115, 0, 0, 0),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromARGB(115, 34, 33, 33),
        title: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
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
                    color: const Color.fromARGB(255, 23, 46, 63),
                  ),
                  controller: _tabController,
                  isScrollable: true,
                  labelPadding: const EdgeInsets.symmetric(horizontal: 70),
                  tabs: const [
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
                      itemCount: shar.length,
                      itemBuilder: (context, index) => csharbcon(
                        itemIndex: index,
                        shar: shar[index],
                        size: size,
                      ),
                    ),
                    ListView.builder(
                      itemCount: sharb.length,
                      itemBuilder: (context, index) => csharb(
                        itemIndex: index,
                        sharb: sharb[index],
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
