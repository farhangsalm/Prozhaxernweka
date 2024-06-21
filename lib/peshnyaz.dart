// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Peshnyaz extends StatefulWidget {
  const Peshnyaz({super.key});

  @override
  State<Peshnyaz> createState() => _PeshnyazState();
}

final DatabaseReference ref = FirebaseDatabase.instance.ref('myapp');
late Future<SharedPreferences> prefs = SharedPreferences.getInstance();
final TextEditingController _textnameController = TextEditingController();

String userId = '';
bool isLiked = false;
int likeCount = 0;

class _PeshnyazState extends State<Peshnyaz> {
  @override
  void initState() {
    super.initState();
    prefs.then((SharedPreferences prefs) {
      setState(() {
        userId = prefs.getString('userId') ??
            'user_${DateTime.now().millisecondsSinceEpoch}';
        prefs.setString('userId', userId);
      });
    });
    _loadLikeState();
  }

  Future<void> _saveLikeState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isLiked_$userId', isLiked);
  }

  Future<void> _loadLikeState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      isLiked = prefs.getBool('isLiked_$userId') ?? false;
    });
  }

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
      isLiked = !isLiked;
      likeCount = currentCount;
    });

    _saveLikeState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(149, 2, 16, 31),
      body: Padding(
        padding: const EdgeInsets.only(top: 100),
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 18),
                  child: Icon(Icons.arrow_back_ios_new_rounded,
                      color: Colors.white),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 30),
                  child: Text(
                    'کۆمێنتەکان',
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
            SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Stack(
                      children: [
                        Container(
                          height: 250,
                          width: 200,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(200, 192, 247, 102),
                              borderRadius:
                                  BorderRadiusDirectional.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 70, left: 110),
                            child: Column(
                              children: [
                                Container(
                                  height: 20,
                                  width: 90,
                                  decoration: BoxDecoration(
                                      color: Colors.black54,
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          bottomLeft: Radius.circular(10))),
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.only(left: 15, top: 3),
                                    child: Text(':پێشنیاری خەڵک',
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                200, 192, 247, 102),
                                            fontSize: 10.5)),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: 120,
                          right: 12,
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width * 0.5,
                            child: const Text(
                              'بژین جەژنەتان پیرۆزبێت هەر لە خۆشی و شادی داببینن',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'kurdishreg',
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ),
                        const Padding(
                            padding: EdgeInsets.only(
                              top: 45,
                            ),
                            child: Divider(
                              thickness: 1.2,
                              indent: 0,
                              color: Color.fromARGB(221, 17, 11, 11),
                              endIndent: 80,
                            )),
                        const Padding(
                            padding: EdgeInsets.only(
                              top: 10,
                              left: 165,
                            ),
                            child: CircleAvatar(
                              backgroundImage: AssetImage('images/farhang.jpg'),
                              radius: 12,
                            )),
                        const Padding(
                            padding: EdgeInsets.only(
                              top: 15,
                              left: 85,
                            ),
                            child: Text(
                              'فەرهەنگ سالم',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                  fontFamily: 'kurdishreg'),
                            )),
                        Padding(
                            padding: const EdgeInsets.only(
                              top: 228,
                              left: 60,
                            ),
                            child: const Icon(Icons.timer_sharp,
                                color: Colors.black, size: 15)),
                        Padding(
                            padding: const EdgeInsets.only(
                              top: 229,
                              left: 10,
                            ),
                            child: Text(
                              '2024/2/2',
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.white,
                              ),
                            )),
                        Padding(
                            padding: EdgeInsets.only(
                              top: 229,
                              left: 10,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 140),
                              child: Row(
                                children: [
                                  Container(
                                    height: 10,
                                    width: 10,
                                    decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(200, 192, 247, 102),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Container(
                                    height: 10,
                                    width: 10,
                                    decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(199, 65, 227, 238),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Container(
                                    height: 10,
                                    width: 10,
                                    decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(198, 238, 65, 192),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                  ),
                                ],
                              ),
                            )),
                        Padding(
                          padding: const EdgeInsets.only(left: 11, top: 9),
                          child: Container(
                            height: 25,
                            width: 25,
                            decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.22),
                                borderRadius: BorderRadius.circular(25)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 14, left: 45),
                          child: Text(
                            '$likeCount',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 5,
                            left: 5,
                          ),
                          child: Column(
                            children: [
                              StreamBuilder(
                                stream: ref.child('some_child_path').onValue,
                                builder: (context, snapshot) {
                                  if (snapshot.hasData &&
                                      !snapshot.hasError &&
                                      snapshot.data!.snapshot.value != null) {
                                    final dataSnapshot =
                                        snapshot.data!.snapshot;
                                    final likeData = dataSnapshot
                                        .child('like')
                                        .value as Map?;
                                    final isLiked = likeData?[userId] == true;
                                    final likeCount = dataSnapshot
                                            .child('likeCount')
                                            .value as int? ??
                                        0;
                                    return Row(
                                      children: [
                                        IconButton(
                                          icon: Padding(
                                            padding: const EdgeInsets.only(
                                                right: 33, bottom: 35),
                                            child: Icon(
                                              isLiked
                                                  ? Icons.favorite_outlined
                                                  : Icons.favorite_border,
                                              color: isLiked
                                                  ? Colors.redAccent
                                                  : Colors.white,
                                            ),
                                          ),
                                          iconSize: 20,
                                          onPressed: () {
                                            updateFavoriteCount(dataSnapshot);
                                          },
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
                                                .child('some_child_path')
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
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Stack(
                      children: [
                        Container(
                          height: 250,
                          width: 200,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(199, 65, 227, 238),
                              borderRadius:
                                  BorderRadiusDirectional.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 70, left: 110),
                            child: Column(
                              children: [
                                Container(
                                  height: 20,
                                  width: 90,
                                  decoration: BoxDecoration(
                                      color: Colors.black54,
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          bottomLeft: Radius.circular(10))),
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.only(left: 15, top: 3),
                                    child: Text(':پێشنیاری خەڵک',
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                199, 65, 227, 238),
                                            fontSize: 10.5)),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: 120,
                          right: 12,
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width * 0.5,
                            child: const Text(
                              'بژین جەژنەتان پیرۆزبێت هەر لە خۆشی و شادی داببینن',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'kurdishreg',
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ),
                        const Padding(
                            padding: EdgeInsets.only(
                              top: 45,
                            ),
                            child: Divider(
                              thickness: 1.2,
                              indent: 0,
                              color: Color.fromARGB(221, 17, 11, 11),
                              endIndent: 80,
                            )),
                        const Padding(
                            padding: EdgeInsets.only(
                              top: 10,
                              left: 165,
                            ),
                            child: CircleAvatar(
                              backgroundImage: AssetImage('images/farhang.jpg'),
                              radius: 12,
                            )),
                        const Padding(
                            padding: EdgeInsets.only(
                              top: 15,
                              left: 85,
                            ),
                            child: Text(
                              'فەرهەنگ سالم',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                  fontFamily: 'kurdishreg'),
                            )),
                        Padding(
                            padding: const EdgeInsets.only(
                              top: 228,
                              left: 60,
                            ),
                            child: const Icon(Icons.timer_sharp,
                                color: Colors.black, size: 15)),
                        Padding(
                            padding: const EdgeInsets.only(
                              top: 229,
                              left: 10,
                            ),
                            child: Text(
                              '2024/2/2',
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.white,
                              ),
                            )),
                        Padding(
                            padding: EdgeInsets.only(
                              top: 229,
                              left: 10,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 140),
                              child: Row(
                                children: [
                                  Container(
                                    height: 10,
                                    width: 10,
                                    decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(199, 65, 227, 238),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Container(
                                    height: 10,
                                    width: 10,
                                    decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(200, 192, 247, 102),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Container(
                                    height: 10,
                                    width: 10,
                                    decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(198, 238, 65, 206),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                  ),
                                ],
                              ),
                            )),
                        Padding(
                          padding: const EdgeInsets.only(left: 11, top: 9),
                          child: Container(
                            height: 25,
                            width: 25,
                            decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.22),
                                borderRadius: BorderRadius.circular(25)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 14, left: 45),
                          child: Text(
                            '$likeCount',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 5,
                            left: 5,
                          ),
                          child: Column(
                            children: [
                              StreamBuilder(
                                stream: ref.child('some_child_path').onValue,
                                builder: (context, snapshot) {
                                  if (snapshot.hasData &&
                                      !snapshot.hasError &&
                                      snapshot.data!.snapshot.value != null) {
                                    final dataSnapshot =
                                        snapshot.data!.snapshot;
                                    final likeData = dataSnapshot
                                        .child('like')
                                        .value as Map?;
                                    final isLiked = likeData?[userId] == true;
                                    final likeCount = dataSnapshot
                                            .child('likeCount')
                                            .value as int? ??
                                        0;
                                    return Row(
                                      children: [
                                        IconButton(
                                          icon: Padding(
                                            padding: const EdgeInsets.only(
                                                right: 33, bottom: 35),
                                            child: Icon(
                                              isLiked
                                                  ? Icons.favorite_outlined
                                                  : Icons.favorite_border,
                                              color: isLiked
                                                  ? Colors.redAccent
                                                  : Colors.white,
                                            ),
                                          ),
                                          iconSize: 20,
                                          onPressed: () {
                                            updateFavoriteCount(dataSnapshot);
                                          },
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
                                                .child('some_child_path')
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
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Stack(
                      children: [
                        Container(
                          height: 250,
                          width: 200,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(198, 238, 65, 206),
                              borderRadius:
                                  BorderRadiusDirectional.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 70, left: 110),
                            child: Column(
                              children: [
                                Container(
                                  height: 20,
                                  width: 90,
                                  decoration: BoxDecoration(
                                      color: Colors.black54,
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          bottomLeft: Radius.circular(10))),
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.only(left: 15, top: 3),
                                    child: Text(':پێشنیاری خەڵک',
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                198, 238, 65, 206),
                                            fontSize: 10.5)),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: 120,
                          right: 12,
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width * 0.5,
                            child: const Text(
                              'بژین جەژنەتان پیرۆزبێت هەر لە خۆشی و شادی داببینن',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'kurdishreg',
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ),
                        const Padding(
                            padding: EdgeInsets.only(
                              top: 45,
                            ),
                            child: Divider(
                              thickness: 1.2,
                              indent: 0,
                              color: Color.fromARGB(221, 17, 11, 11),
                              endIndent: 80,
                            )),
                        const Padding(
                            padding: EdgeInsets.only(
                              top: 10,
                              left: 165,
                            ),
                            child: CircleAvatar(
                              backgroundImage: AssetImage('images/farhang.jpg'),
                              radius: 12,
                            )),
                        const Padding(
                            padding: EdgeInsets.only(
                              top: 15,
                              left: 85,
                            ),
                            child: Text(
                              'فەرهەنگ سالم',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                  fontFamily: 'kurdishreg'),
                            )),
                        Padding(
                            padding: const EdgeInsets.only(
                              top: 228,
                              left: 60,
                            ),
                            child: const Icon(Icons.timer_sharp,
                                color: Colors.black, size: 15)),
                        Padding(
                            padding: const EdgeInsets.only(
                              top: 229,
                              left: 10,
                            ),
                            child: Text(
                              '2024/2/2',
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.white,
                              ),
                            )),
                        Padding(
                            padding: EdgeInsets.only(
                              top: 229,
                              left: 10,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 140),
                              child: Row(
                                children: [
                                  Container(
                                    height: 10,
                                    width: 10,
                                    decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(198, 238, 65, 206),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Container(
                                    height: 10,
                                    width: 10,
                                    decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(199, 65, 227, 238),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Container(
                                    height: 10,
                                    width: 10,
                                    decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(200, 192, 247, 102),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                  ),
                                ],
                              ),
                            )),
                        Padding(
                          padding: const EdgeInsets.only(left: 11, top: 9),
                          child: Container(
                            height: 25,
                            width: 25,
                            decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.22),
                                borderRadius: BorderRadius.circular(25)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 14, left: 45),
                          child: Text(
                            '$likeCount',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 5,
                            left: 5,
                          ),
                          child: Column(
                            children: [
                              StreamBuilder(
                                stream: ref.child('some_child_path').onValue,
                                builder: (context, snapshot) {
                                  if (snapshot.hasData &&
                                      !snapshot.hasError &&
                                      snapshot.data!.snapshot.value != null) {
                                    final dataSnapshot =
                                        snapshot.data!.snapshot;
                                    final likeData = dataSnapshot
                                        .child('like')
                                        .value as Map?;
                                    final isLiked = likeData?[userId] == true;
                                    final likeCount = dataSnapshot
                                            .child('likeCount')
                                            .value as int? ??
                                        0;
                                    return Row(
                                      children: [
                                        IconButton(
                                          icon: Padding(
                                            padding: const EdgeInsets.only(
                                                right: 33, bottom: 35),
                                            child: Icon(
                                              isLiked
                                                  ? Icons.favorite_outlined
                                                  : Icons.favorite_border,
                                              color: isLiked
                                                  ? Colors.redAccent
                                                  : Colors.white,
                                            ),
                                          ),
                                          iconSize: 20,
                                          onPressed: () {
                                            updateFavoriteCount(dataSnapshot);
                                          },
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
                                                .child('some_child_path')
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
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 15),
              child: Text(
                'تۆش ئێستا کۆمێنتێک بکە یاخوود ڕای خۆوت بنووسە',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: Container(
                  height: 53,
                  child: TextFormField(
                    style: TextStyle(color: Colors.white),
                    controller: _textnameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      fillColor: Colors.grey.withOpacity(0.15),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(7),
                        child: Container(
                          height: 15,
                          width: 15,
                          child:
                              Icon(Icons.camera_rounded, color: Colors.white),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              image: DecorationImage(
                                  image: AssetImage('images/farhang.jpg'))),
                        ),
                      ),
                      filled: true,
                      hintText: '   ناوی خۆوت بنووسە',
                      hintStyle: TextStyle(
                          fontFamily: 'kurdishreg',
                          color: Colors.grey,
                          fontSize: 14),
                    ),
                  ),
                ),
              ),
            ),
            Column(
              children: [
                Container(
                  height: 30,
                  width: 100,
                  child: Row(children: [
                    Text(
                      'زۆۆر شازە',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ]),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey.withOpacity(0.15),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
