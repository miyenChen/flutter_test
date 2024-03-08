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
            child: SizedBox(
              //需要設定容器寬度、高度時，在外層添加 SizedBox
              //可以設定: 數字 / 最大值 max() / 最小值 min() / 撐滿父層空間 double.infinity
              width: double.infinity,
              height: double.infinity,
              // Column 直排 / Row 行排
              child: Row(
                //mainAxisAlignment / crossAxisAlignment 可以想像為用 justify-content / align-items 排版
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  ElevatedButton(
                    //用變數的值為按鈕名稱
                    child: Text(buttonName),
                    onPressed: () {
                      setState(() {
                        buttonName = "hello";
                      });
                    },
                  ),
                  ElevatedButton(
                    //用變數的值為按鈕名稱
                    child: Text(buttonName),
                    onPressed: () {
                      setState(() {
                        buttonName = "hello";
                      });
                    },
                  ),
                ],
              ),
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
