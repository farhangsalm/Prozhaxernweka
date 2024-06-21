// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/desing/desing.dart';
import 'package:flutter_application_1/program/fluttar.dart';
import 'package:flutter_application_1/dactor/dactor.dart';
import 'package:flutter_application_1/mamostakan/mala.dart';
import 'package:flutter_application_1/wep/wep.dart';
import 'package:flutter_application_1/gshti/gashti.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final TextEditingController _searchController = TextEditingController();

  final List<Widget> _tabs = [
    Tab(text: 'گشتی'),
    Tab(text: 'پرۆگرامینگ'),
    Tab(text: 'وێب سایت'),
    Tab(text: 'مامۆستاکان'),
    Tab(text: 'دەروناسی'),
    Tab(text: 'دیزاین'),
  ];

  final List<Widget> _tabViews = [
    gshti(),
    FlutterCourse(),
    wepsayt(),
    malakn(),
    dctorakn(),
    desinakn(),
  ];

  List<Widget> _filteredTabs = [];
  List<Widget> _filteredTabViews = [];

  @override
  void initState() {
    super.initState();
    _filteredTabs.addAll(_tabs);
    _filteredTabViews.addAll(_tabViews);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(115, 0, 6, 12),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const Padding(
          padding: EdgeInsets.only(right: 10),
          child: Text(
            'Techgenius  - بلیمەت',
            style: TextStyle(color: Colors.green, fontSize: 15),
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Container(
              height: 120,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset('images/jav1.png'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset('images/jav2.jpg'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset('images/jav2.jpg'),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 4),
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: TextFormField(
                controller: _searchController,
                style: const TextStyle(color: Colors.white),
                onChanged: _filterTabsAndViews,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: const BorderSide(color: Colors.green),
                  ),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.green),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  filled: true,
                  fillColor: Colors.green.withOpacity(0.2),
                  hintStyle: const TextStyle(color: Colors.grey),
                  prefixIcon: const Icon(Icons.search, color: Colors.green),
                  hintText: 'گەڕانبکە بۆ ئەوەی دەتەوێت',
                ),
              ),
            ),
          ),
          Expanded(
            child: DefaultTabController(
              length: _filteredTabs.length,
              child: Column(
                children: [
                  Directionality(
                    textDirection: TextDirection.rtl,
                    child: TabBar(
                      isScrollable: true,
                      labelColor: Colors.green,
                      unselectedLabelColor: Colors.grey.withOpacity(0.3),
                      tabs: _filteredTabs,
                    ),
                  ),
                  Expanded(
                    child: TabBarView(
                      children: _filteredTabViews,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _filterTabsAndViews(String query) {
    setState(() {
      _filteredTabs = [];
      _filteredTabViews = [];

      for (int i = 0; i < _tabs.length; i++) {
        if (_tabs[i].toString().toLowerCase().contains(query.toLowerCase())) {
          _filteredTabs.add(_tabs[i]);
          _filteredTabViews.add(_tabViews[i]);
        }
      }
    });
  }
}

class MenuScreen extends StatefulWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
