import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            PopupMenuButton(
              itemBuilder: (context) {
                return ["Setting", "Theme Mode"].map((e) {
                  return PopupMenuItem(
                    child: Text(e),
                    onTap: () {
                      print(e);
                    },
                  );
                }).toList();
              },
              offset: const Offset(0, 15),
            )
          ],
          title: const Text("My App"),
          bottom: const TabBar(indicatorColor: Colors.amber, tabs: [
            Tab(icon: Icon(Icons.home)),
            Tab(icon: Icon(Icons.call)),
            Tab(
              icon: Icon(Icons.chat),
            )
          ]),
        ),
        body: const TabBarView(
          children: [
            Center(
              child: Text("Home"),
            ),
            Center(
              child: Text("Calls"),
            ),
            Center(
              child: Text("Chats"),
            )
          ],
        ),
      ),
    );
  }
}
