/*import 'package:flutter/material.dart';
import 'package:flutter_application_1/wep/configurion.dart';

class draweScreen extends StatefulWidget {
  const draweScreen({super.key});

  @override
  State<draweScreen> createState() => _draweScrenState();
}

class _draweScrenState extends State<draweScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: primaryGreen,
      padding: EdgeInsets.only(
        top: 80,
        bottom: 70,
        left: 10,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Farhang Salm Birm',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'programar',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              )
            ],
          ),
          Column(
              children: drawerItems
                  .map((element) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(
                              element['icon'],
                              color: Colors.white,
                              size: 30,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              element['title'],
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            )
                          ],
                        ),
                      ))
                  .toList()),
          Row(
            children: [
              Icon(
                Icons.settings,
                color: Colors.white,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'دانـانەوە',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                width: 2,
                height: 20,
                color: Colors.white,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'چوونە دەرەوە',
                style: TextStyle(
                  color: Colors.white,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
*/