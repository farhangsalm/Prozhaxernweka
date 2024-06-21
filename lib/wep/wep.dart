// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/web2/css1/css.dart';
import 'package:flutter_application_1/web2/php.dart/ph.dart';
import 'package:flutter_application_1/wep/bashakni_web/webgui.dart';
import 'package:flutter_application_1/wep/configurion.dart';
import 'package:flutter_application_1/wep/javasacrip/scripgui.dart';

class wepsayt extends StatelessWidget {
  const wepsayt({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(right: 10, top: 10, bottom: 5, left: 5), // (TO),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 175),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => guiDetailsPage(),
                  ),
                );
              },
              child: Container(
                height: 200,
                width: 170,
                decoration: BoxDecoration(
                  color: ahmad,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(75),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 113, right: 50),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: Text(
                          "فیربوونی زمانی html",
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.50,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 20, right: 14),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.9,
                          child: Text(
                            "ferbun u zanst  ",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'kurdishreg',
                              color: Colors.orange,
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 40),
                      child: Container(
                        width: 135,
                        padding: EdgeInsets.symmetric(horizontal: 2),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 88, 111, 114),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(100),
                          ),
                        ),
                        child: SizedBox(
                          child: Text(
                            "وانـــەی html",
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.button,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 220),
            child: Positioned(
              top: 0,
              left: 0,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 0, left: 0),
                child: SizedBox(
                  height: 100,
                  width: 100,
                  child: Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      color: Colors.white54,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Image.asset('images/html.png'),
                  ),
                ),
              ),
            ),
          ),

          //
          //sarawa flutter
          //
          //

          GestureDetector(
            onTap: () {
              // Navigate to another pageonTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => scripDetailsPage(),
                ),
              );
            },
            child: Container(
              height: 200,
              width: 170,
              decoration: BoxDecoration(
                color: ahmad,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(75),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 113, right: 30),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: Text(
                        " فیربوونی زمانی javascript",
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.50,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 20, right: 14),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: Text(
                          "abdelrahman",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'kurdishreg',
                            color: Colors.orange,
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 40),
                    child: Container(
                      width: 135,
                      padding: EdgeInsets.symmetric(horizontal: 2),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 88, 111, 114),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(100),
                        ),
                      ),
                      child: SizedBox(
                        child: Text(
                          "وانـــەی javascript",
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.button,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 220, right: 40),
            child: Positioned(
              top: 100,
              left: 0,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 0, left: 0),
                child: SizedBox(
                  height: 100,
                  width: 100,
                  child: Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      color: Colors.white54,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Image.asset('images/php.png'),
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              // Navigate to another pageonTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => phpDetailsPage(),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.only(
                top: 220,
              ),
              child: Container(
                height: 200,
                width: 170,
                decoration: BoxDecoration(
                  color: ahmad,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(75),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 113, right: 50),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: Text(
                          "فیربوونی زمانی php",
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.50,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 20, right: 14),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.9,
                          child: Text(
                            "Rest code",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'kurdishreg',
                              color: Colors.orange,
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 40),
                      child: Container(
                        width: 135,
                        padding: EdgeInsets.symmetric(horizontal: 2),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 88, 111, 114),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(100),
                          ),
                        ),
                        child: SizedBox(
                          child: Text(
                            "وانـــەی php ",
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.button,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 40),
            child: Positioned(
              top: 0,
              left: 0,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 0, left: 0),
                child: SizedBox(
                  height: 100,
                  width: 100,
                  child: Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      color: Colors.white54,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Image.asset('images/js.png'),
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              // Navigate to another pageonTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => cssDetailsPage(),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 210, right: 200),
              child: Container(
                height: 200,
                width: 170,
                decoration: BoxDecoration(
                  color: ahmad,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(75),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 118, right: 44),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: Text(
                          "فیربوونی زمانی css ",
                          style: TextStyle(color: Colors.white, fontSize: 9),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.50,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 20, right: 14),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.9,
                          child: Text(
                            "Rest code",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'kurdishreg',
                              color: Colors.orange,
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: Container(
                        width: 135,
                        padding: EdgeInsets.symmetric(horizontal: 2),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 88, 111, 114),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(100),
                          ),
                        ),
                        child: SizedBox(
                          child: Text(
                            "وانـــەی css ",
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.button,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 230,
              top: 220,
            ),
            child: Positioned(
              top: 0,
              left: 0,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 0, left: 0),
                child: SizedBox(
                  height: 100,
                  width: 100,
                  child: Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      color: Colors.white54,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Image.asset('images/css12.png'),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
