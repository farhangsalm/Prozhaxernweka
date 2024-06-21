import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/gshti/gashti.dart';
import 'package:url_launcher/url_launcher.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

final facbookUri = Uri.parse('https://www.facebook.com/Gashtiar.Yusf');

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(200, 31, 41, 51),
      body: Column(children: [
        Container(
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(top: 28, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        gshti();

                        Navigator.of(context).pop();
                      },
                      icon: Icon(
                        Icons.arrow_back_ios_rounded,
                        color: Colors.orangeAccent.shade100,
                      )),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      width: 5,
                    ),
                    Stack(
                      children: [
                        CircleAvatar(
                            radius: 60,
                            backgroundImage: AssetImage('images/farhang.jpg')),
                        Padding(
                          padding: const EdgeInsets.only(top: 80, left: 99),
                          child: Container(
                            child: Icon(Icons.verified, color: Colors.blue),
                            height: 25,
                            width: 25,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(249, 255, 255, 255),
                                borderRadius: BorderRadius.circular(50)),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Stack(
                      children: [
                        CircleAvatar(
                            radius: 60,
                            backgroundImage:
                                AssetImage('images/mhamadfaisal.jpg')),
                        Padding(
                          padding: const EdgeInsets.only(top: 80, left: 99),
                          child: Container(
                            child: Icon(Icons.verified, color: Colors.blue),
                            height: 25,
                            width: 25,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(249, 255, 255, 255),
                                borderRadius: BorderRadius.circular(50)),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Stack(
                      children: [
                        CircleAvatar(
                            radius: 60,
                            backgroundImage: AssetImage('images/kamaran.jpg')),
                        Padding(
                          padding: const EdgeInsets.only(top: 80, left: 99),
                          child: Container(
                            child: Icon(Icons.verified, color: Colors.blue),
                            height: 25,
                            width: 25,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(249, 255, 255, 255),
                                borderRadius: BorderRadius.circular(50)),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Column(children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('فەرهەنگ سالم',
                            style: TextStyle(
                                color: Colors.white, fontFamily: 'kurdishreg')),
                      ),
                      Text('دروستکەری پڕۆگرام ',
                          style: TextStyle(
                              color: Colors.grey, fontFamily: 'kurdishreg')),
                    ]),
                    SizedBox(
                      width: 20,
                    ),
                    Column(children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('محمد فەیسەڵ',
                            style: TextStyle(
                                color: Colors.white, fontFamily: 'kurdishreg')),
                      ),
                      Text('دروستکەری پڕۆگرام ',
                          style: TextStyle(
                              color: Colors.grey, fontFamily: 'kurdishreg')),
                    ]),
                    SizedBox(
                      width: 20,
                    ),
                    Column(children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('کامەران سلێمان',
                            style: TextStyle(
                                color: Colors.white, fontFamily: 'kurdishreg')),
                      ),
                      Text('دروستکەری پڕۆگرام ',
                          style: TextStyle(
                              color: Colors.grey, fontFamily: 'kurdishreg')),
                    ]),
                    SizedBox(
                      width: 20,
                    ),
                  ],
                ),
              ]),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.star),
                  Padding(
                    padding: const EdgeInsets.only(right: 35),
                    child: Text('دیڤیلۆپەرەکانی پڕۆگرام',
                        style: TextStyle(fontSize: 15)),
                  ),
                ],
              ),
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Color.fromARGB(200, 240, 223, 103),
              ),
            )
          ]),
          height: 350,
          width: double.infinity,
          decoration: BoxDecoration(
              color: Color.fromARGB(200, 37, 85, 149),
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20))),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return CupertinoAlertDialog(
                      title: Text('هاوکاریکردن',
                          style: TextStyle(fontFamily: 'kurdishreg')),
                      content: Text(
                          'بۆ هاوکاری کردن  ، پاڵپشتیەکانتان  لەڕێگەی فاستپەی بۆئەوژمارەیە بنێرن 07517443128',
                          style: TextStyle(fontFamily: 'kurdishreg')),
                      actions: [
                        CupertinoDialogAction(
                          child: Text('باشە',
                              style: TextStyle(fontFamily: 'kurdishreg')),
                          onPressed: () => Navigator.of(context).pop(false),
                        )
                      ],
                    );
                  },
                );
              },
              child: Column(
                children: [
                  Container(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.pinkAccent,
                              child: Icon(
                                Icons.mobile_friendly,
                                size: 35,
                              )),
                        ),
                        Container(
                          height: 30,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Colors.pinkAccent,
                              borderRadius: BorderRadius.circular(5)),
                          child: Padding(
                            padding: const EdgeInsets.all(6),
                            child: Text('هاوكاری كردن',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'kurdishreg')),
                          ),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text('FastPay',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white, fontFamily: 'kurdishreg')),
                      ],
                    ),
                    height: 135,
                    width: 130,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(161, 29, 47, 105),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return CupertinoAlertDialog(
                      title: Text('هاوکاریکردن',
                          style: TextStyle(fontFamily: 'kurdishreg')),
                      content: Text(
                          'بۆ هاوکاری کردن، پاڵپشتیەکانتان  لەڕێگەی ئێف ئای بی بۆئەوژمارەیە بنێرن 07517443128',
                          style: TextStyle(fontFamily: 'kurdishreg')),
                      actions: [
                        CupertinoDialogAction(
                          child: Text('باشە',
                              style: TextStyle(fontFamily: 'kurdishreg')),
                          onPressed: () => Navigator.of(context).pop(false),
                        )
                      ],
                    );
                  },
                );
              },
              child: Column(
                children: [
                  Container(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                              radius: 30,
                              backgroundColor:
                                  Color.fromARGB(200, 75, 155, 174),
                              child: Icon(
                                Icons.attach_money_rounded,
                                size: 35,
                              )),
                        ),
                        Container(
                          height: 30,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(200, 75, 155, 174),
                              borderRadius: BorderRadius.circular(5)),
                          child: Padding(
                            padding: const EdgeInsets.all(6),
                            child: Text('هاوكاری كردن',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'kurdishreg')),
                          ),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text('FiB',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white, fontFamily: 'kurdishreg')),
                      ],
                    ),
                    height: 135,
                    width: 130,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(161, 29, 47, 105),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 5, bottom: 20),
              ),
              CupertinoButton(
                child: Text('هەژمارەکانی ئێمە',
                    style: TextStyle(
                        fontFamily: 'kurdish',
                        color: Colors.white,
                        fontSize: 15)),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return CupertinoAlertDialog(
                        title: Text('هەژمارەکانی ئێمە',
                            style: TextStyle(
                                fontFamily: 'kurdishreg', fontSize: 15)),
                        actions: [
                          CupertinoDialogAction(
                              onPressed: () {
                                const Link =
                                    'https://www.instagram.com/g4shtiar._.yousif/?igsh=MWJlczE1ejI3ZmM2bw%3D%3D';

                                launchUrl(Uri.parse(Link),
                                    mode: LaunchMode.inAppWebView);
                              },
                              child: Text('Gashtiar Yusf',
                                  style: TextStyle(
                                      fontFamily: 'kurdishreg', fontSize: 15))),
                          CupertinoDialogAction(
                              onPressed: () {
                                const Link =
                                    'https://www.instagram.com/farhang._.dl?igsh=MnZ0cDgyZGg3ajczhttps:';

                                launchUrl(Uri.parse(Link),
                                    mode: LaunchMode.inAppWebView);
                              },
                              child: Text('Farrhang Salm',
                                  style: TextStyle(
                                      fontFamily: 'kurdishreg', fontSize: 15))),
                        ],
                      );
                    },
                  );
                },
              ),
            ],
          ),
          height: 50,
          width: 320,
          decoration: BoxDecoration(
              color: Color.fromARGB(200, 50, 63, 75),
              borderRadius: BorderRadius.circular(10)),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 60),
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.white,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 75),
                child:
                    Text('گۆڕینی دۆخ', style: TextStyle(color: Colors.white)),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8),
                child: Icon(
                  Icons.dark_mode,
                  color: Colors.white,
                ),
              )
            ],
          ),
          height: 50,
          width: 320,
          decoration: BoxDecoration(
              color: Color.fromARGB(200, 75, 155, 174),
              borderRadius: BorderRadius.circular(10)),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 60),
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.exit_to_app,
                      color: Colors.white,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 90),
                child:
                    Text('چوونەدەرەوە', style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
          height: 50,
          width: 320,
          decoration: BoxDecoration(
              color: Colors.redAccent, borderRadius: BorderRadius.circular(10)),
        ),
      ]),
    );
  }
}
