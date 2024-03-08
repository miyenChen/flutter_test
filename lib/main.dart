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
  int currentIndex = 0;

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
                setState(() {
                  buttonName = "hello";
                });
              },
            ),
          ),
          //下方導欄列，最少要兩個項目，可設定顏色、大小、名稱、icon
          bottomNavigationBar: BottomNavigationBar(
            items: const [
              BottomNavigationBarItem(
                  label: "home",
                  icon: Icon(
                    Icons.home,
                  )),
              BottomNavigationBarItem(
                label: "setting",
                icon: Icon(
                  Icons.settings,
                ),
              )
            ],
            //正在活動的 bottom nav item
            currentIndex: currentIndex,
            onTap: (int index) {
              setState(() {
                currentIndex = index;
              });
            },
          ),
        ));
  }
}
