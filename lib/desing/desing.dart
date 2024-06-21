// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/desing/pexart/pex.dart';
import 'package:flutter_application_1/desing/photoshop/photo.dart';
import 'package:flutter_application_1/desing2/indesing.dart';
import 'package:flutter_application_1/desing2/kurdlab/kurdlab.dart';
import 'package:flutter_application_1/wep/configurion.dart';

class desinakn extends StatelessWidget {
  const desinakn({super.key});

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
                    builder: (context) => photoDetailsPage(),
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
                      padding: const EdgeInsets.only(top: 113, right: 40),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: Text(
                          "فیربوونی فۆتۆشوپ دیزاینەر",
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
                            "Bahman Graphic  ",
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
                            "وانـــەی فۆتۆشۆ",
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
                    child: Image.asset('images/ps.png'),
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
                  builder: (context) => pexDetailsPage(),
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
                        "فیربوونی پێکس ئارت دیزاینە",
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
                          "وانـــەی پێکس ئارت ",
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
                    child: Image.asset('images/kurdlab.png'),
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
                  builder: (context) => labDetailsPage(),
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
                      padding: const EdgeInsets.only(top: 113, right: 37),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: Text(
                          " فیربوونی کوردلاب دیزاینە",
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
                            "وانـــەی   کوردلاب ",
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
                    child: Image.asset('images/pex.png'),
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
                  builder: (context) => indesingDetailsPage(),
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
                      padding: const EdgeInsets.only(top: 118, right: 37),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: Text(
                          "  فیربوونی ئین دیزاین ",
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
                            "وانـــەی ئین دیزاین ",
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
                    child: Image.asset('images/indesing.png'),
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
