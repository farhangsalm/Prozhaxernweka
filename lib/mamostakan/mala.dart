// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_application_1/mamostakan/m.adal/madl.dart';
import 'package:flutter_application_1/mamostakan/muhammad/muhammad.dart';
import 'package:flutter_application_1/mamostakn2/hawre.dart';
import 'package:flutter_application_1/mamostakn2/m.sorana/m.soran.dart';
import 'package:flutter_application_1/wep/configurion.dart';

class malakn extends StatelessWidget {
  const malakn({super.key});

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
                    builder: (context) => adlDetailsPage(),
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
                      padding: const EdgeInsets.only(top: 113, right: 66),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: Text(
                          "بابەتی ئاینی",
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
                            "mamosta Adl Ezat ",
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
                            "وتارەکان",
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.labelLarge,
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
                    child: Image.asset('images/mamosta hadl.png'),
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
                  builder: (context) => faqyDetailsPage(),
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
                    padding: const EdgeInsets.only(top: 113, right: 66),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: Text(
                        "بابەتی ئاینی",
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
                          "m.muhmmad mala fayq",
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
                          " وتارەکان",
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.labelLarge,
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
                    child: Image.asset('images/soran.png'),
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
                  builder: (context) => soranlDetailsPage(),
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
                      padding: const EdgeInsets.only(top: 113, right: 66),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: Text(
                          " بابەتی ئاینی",
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
                            "Mamosta Soran Abdullkarim",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'kurdishreg',
                              color: Colors.orange,
                              fontSize: 11,
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
                            " وتارەکان",
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.labelLarge,
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
                    child: Image.asset('images/muhamd2.png'),
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
                  builder: (context) => hawrelDetailsPage(),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 220, right: 200),
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
                      padding: const EdgeInsets.only(top: 118, right: 60),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: Text(
                          "بابەتی ئاینی",
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
                            " Mamosta Hawre Qyamat",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'kurdishreg',
                              color: Colors.orange,
                              fontSize: 11,
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
                            " وتارەکان",
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.labelLarge,
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
                    child: Image.asset('images/hawre.png'),
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
