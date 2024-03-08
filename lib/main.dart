import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        //關閉右上角debug符號
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          // 上方nav
          appBar: AppBar(
            title: const Text('First Route'),
          ),
          body: const Center(child: Text("body")),
          //下方導欄列，最少要兩個項目，可設定顏色、大小、名稱、icon
          bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                  label: "home",
                  icon: Icon(
                    Icons.home,
                    color: Colors.pink[300],
                    size: 24.0,
                  )),
              BottomNavigationBarItem(
                label: "setting",
                icon: Icon(Icons.settings),
              )
            ],
          ),
        ));
  }
}
