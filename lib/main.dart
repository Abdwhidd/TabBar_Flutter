import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
    List<Tab> myTab = [
      Tab(
        text: 'Tab 1',
        icon: Icon(Icons.add_a_photo),
      ),
      Tab(
        text: 'Tab 2',
        icon: Icon(Icons.eighteen_mp_rounded),
      ),
      Tab(
        text: 'Tab 3',
        icon: Icon(Icons.add_alarm_rounded),
      ),
    ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: myTab.length,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Tab Bar'),
            centerTitle: true,
            bottom: TabBar(
              indicator: BoxDecoration(
                color: Colors.amber,
              ),
              tabs: myTab
            ),
          ),
          body: TabBarView(
            children: [
              Center(
                child: Text('TAB 1', style: TextStyle(fontSize: 30),),
              ),
              Center(
                child: Text('TAB 2', style: TextStyle(fontSize: 30),),
              ),
              Center(
                child: Text('TAB 3', style: TextStyle(fontSize: 30),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

