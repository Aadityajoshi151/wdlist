import 'package:flutter/material.dart';
import 'package:wdlist/widgets/inputmodal.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

const List<Tab> tabs = <Tab>[
  Tab(text: 'Morning', icon: Icon(Icons.wb_sunny)),
  Tab(text: 'Evening', icon: Icon(Icons.nights_stay)),
  Tab(text: 'Weekend', icon: Icon(Icons.weekend)),
];

String task = "";

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Builder(builder: (BuildContext context) {
        final TabController tabController = DefaultTabController.of(context)!;

        return Scaffold(
          appBar: AppBar(
            title: Center(child: Text("WDList")),
            elevation: 0,
            bottom: const TabBar(
              indicatorColor: Colors.lime,
              labelColor: Colors.lime,
              unselectedLabelColor: Colors.white,
              tabs: tabs,
            ),
          ),
          body: TabBarView(
            children: tabs.map((Tab tab) {
              return Center(child: Icon(Icons.wifi));
            }).toList(),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return InputModal();
                  });
            print(task);      
            print("Tab: "+tabs[tabController.index].text.toString());
            },
            child: Icon(Icons.add),
          ),
        );
      }),
    );
  }
}
