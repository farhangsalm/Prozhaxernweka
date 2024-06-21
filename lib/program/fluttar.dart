import 'package:flutter/material.dart';
import 'package:flutter_application_1/program/bashflutter/pro1.dart';
import 'package:flutter_application_1/program/bashijava/java1.dart';
import 'package:flutter_application_1/program2/c++/guiplas.dart';
import 'package:flutter_application_1/program2/sharb.dart';
import 'package:flutter_application_1/wep/configurion.dart';

class FlutterCourse extends StatelessWidget {
  const FlutterCourse({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          right: 10, top: 10, bottom: 5, left: 5), // (TO),
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
                    builder: (context) => CoursesDetailsPage(),
                  ),
                );
              },
              child: Container(
                height: 200,
                width: 170,
                decoration: BoxDecoration(
                  color: ahmad,
                  borderRadius: const BorderRadius.only(
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
                        child: const Text(
                          "فیربوونی زمانی flutter",
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.50,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 20, right: 27),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.9,
                          child: const Text(
                            "Taco Group",
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
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 40),
                      child: Container(
                        width: 135,
                        padding: const EdgeInsets.symmetric(horizontal: 2),
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 88, 111, 114),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(100),
                          ),
                        ),
                        child: SizedBox(
                          child: Text(
                            "وانـــەی flutter",
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
                    child: Image.asset('images/flutter.png'),
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
                  builder: (context) => javaDetailsPage(),
                ),
              );
            },
            child: Container(
              height: 200,
              width: 170,
              decoration: BoxDecoration(
                color: ahmad,
                borderRadius: const BorderRadius.only(
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
                      child: const Text(
                        "فیربوونی زمانی java",
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
                        child: const Text(
                          "T3so Tutorials",
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
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 40),
                    child: Container(
                      width: 135,
                      padding: const EdgeInsets.symmetric(horizontal: 2),
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 88, 111, 114),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(100),
                        ),
                      ),
                      child: SizedBox(
                        child: Text(
                          "وانـــەی java",
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
          const Padding(
            padding: EdgeInsets.only(top: 150, right: 80),
            child: Text(
              "H4T",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'kurdishreg',
                color: Colors.orange,
                fontSize: 13,
                fontWeight: FontWeight.bold,
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
                    child: Image.asset('images/c#.png'),
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
                  builder: (context) => const sharbDetailsPage(),
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
                  borderRadius: const BorderRadius.only(
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
                      padding: const EdgeInsets.only(top: 113, right: 55),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: const Text(
                          "فیربوونی زمانی#C",
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
                          child: const Text(
                            "ferbun u zanst",
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
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 40),
                      child: Container(
                        width: 135,
                        padding: const EdgeInsets.symmetric(horizontal: 2),
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 88, 111, 114),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(100),
                          ),
                        ),
                        child: SizedBox(
                          child: Text(
                            "وانـــەی#c",
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
          const Padding(
            padding: EdgeInsets.only(top: 365, right: 60),
            child: Text(
              "shex code",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'kurdishreg',
                color: Colors.orange,
                fontSize: 13,
                fontWeight: FontWeight.bold,
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
                    child: Image.asset('images/java.png'),
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
                  builder: (context) => plusDetailsPage(),
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
                  borderRadius: const BorderRadius.only(
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
                      padding: const EdgeInsets.only(top: 118, right: 40),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: const Text(
                          "فیربوونی زمانی ++c",
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
                          child: const Text(
                            "Tech with Bekas",
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
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: Container(
                        width: 135,
                        padding: const EdgeInsets.symmetric(horizontal: 2),
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 88, 111, 114),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(100),
                          ),
                        ),
                        child: SizedBox(
                          child: Text(
                            "وانـــەی++C",
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
                    child: Image.asset('images/c++.png'),
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
