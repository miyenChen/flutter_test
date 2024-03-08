import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String buttonName = "Click";

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
          body: Center(
            child: ElevatedButton(
              //用變數的值為按鈕名稱
              child: Text(buttonName),
              onPressed: () {
                print("hi");
              },
            ),
          ),
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
