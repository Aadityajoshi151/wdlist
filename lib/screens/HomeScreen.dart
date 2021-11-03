import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
  
}
const List<Tab> tabs = <Tab>[
  Tab(text: 'Morning',icon: Icon(Icons.wb_sunny)),
  Tab(text: 'Evening',icon: Icon(Icons.nights_stay)),
  Tab(text: 'Weekend',icon: Icon(Icons.weekend)),
];
class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,

      child: Builder(builder: (BuildContext context) {
        final TabController tabController = DefaultTabController.of(context)!;
        tabController.addListener(() {
          if (!tabController.indexIsChanging) {
          }
        });
        return Scaffold(
          appBar: AppBar(
            title: Center(child: Text("WDList")),
            elevation: 0,
            bottom: const TabBar(
              tabs: tabs,
            ),
          ),
          body: TabBarView(
            children: tabs.map((Tab tab) {
              return Center(
                child: Icon(Icons.wifi)
              );
            }).toList(),
          ),
        );
      }),
    );}
  }