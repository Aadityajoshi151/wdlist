import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            bottom: const TabBar(
              tabs: [
                Tab(text: "Morning",icon: Icon(Icons.wb_sunny)),
                Tab(text: "Evening",icon: Icon(Icons.nights_stay)),
                Tab(text: "Weekend",icon: Icon(Icons.weekend)),
              ],
            ),
            title: Center(child: const Text("WDList"),),
          ),
          body: const TabBarView(
            children: [
              Icon(Icons.wb_sunny),
              Icon(Icons.nights_stay),
              Icon(Icons.weekend),
            ],
          ),
        ),
      );
  }}