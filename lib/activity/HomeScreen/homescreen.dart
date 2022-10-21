import 'package:flutter/material.dart';
import 'package:kaushalsir/activity/TabViewPage/portfolio.dart';
import 'package:kaushalsir/activity/TabViewPage/risk.dart';
import 'package:kaushalsir/activity/TabViewPage/status.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          bottom:const TabBar(
            labelColor: Colors.black,
            indicatorColor: Colors.black,
            tabs: [
              Tab(text: "Status",),
              Tab(text: "Portfolio",),
              Tab(text: "Risk",),
            ],
          ),
        ),
        body: const TabBarView(
            children: [
              Status(),
              Portfolio(),
              Risk(),
            ],
        ),
      ),
    );
  }
}
