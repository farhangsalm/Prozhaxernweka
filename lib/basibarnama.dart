import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';

class BasiBarnam extends StatefulWidget {
  BasiBarnam({Key? key}) : super(key: key);

  @override
  _BasiBarnamState createState() => _BasiBarnamState();
}

class _BasiBarnamState extends State<BasiBarnam> {
  final ref = FirebaseDatabase.instance.ref('myapp');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 90,
            ),
            child: Container(
              alignment: Alignment.center,
              height: 250,
              width: 320,
              decoration: BoxDecoration(
                color: Colors.indigo,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 35),
                      child: Text(
                        'دەربارەی پرۆگرام : ئەم ئەپڵەکەیشنە چەندەهه تایبەتمەندی هەیە یەکێک لەوانە کاتت بۆ دەگەرێنێتەوە  وە هەر بەشێکت بوێت و هەرڤیدۆیەکت بوێت هەیە وە هەموو بەشەکان جیاکراونەتەوە',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 19,
                          fontFamily: 'kurdishreg',
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Container(
                      height: 10,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Directionality(
            textDirection: TextDirection.rtl,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Text(
                      'کۆمێنتەکان',
                      style: TextStyle(color: Colors.white),
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
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: FirebaseAnimatedList(
                query: ref,
                itemBuilder: (context, snapshot, animation, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 100,
                      width: 330,
                      decoration: BoxDecoration(
                        color: Colors.white12,
                        border: Border.all(color: Colors.indigo),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Directionality(
                        textDirection: TextDirection.rtl,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CircleAvatar(
                                      radius: 13,
                                      backgroundImage: NetworkImage(snapshot
                                          .child('img')
                                          .value
                                          .toString())),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      snapshot.child('name').value.toString(),
                                      style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 161, 172, 171),
                                        fontSize: 10,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 102, top: 5),
                                    child: Text(
                                      snapshot.child('date').value.toString(),
                                      style: TextStyle(
                                        color: Colors.white54,
                                        fontSize: 10,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 10, bottom: 10),
                              child: Column(
                                children: [
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width * 0.9,
                                    child: Text(
                                      snapshot.child('text').value.toString(),
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 10,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
