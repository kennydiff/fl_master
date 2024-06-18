// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:fl_master/pages/first_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
    runApp(MyApp());
}

void userTapped() {
    print("Tapped");
}

class MyApp extends StatelessWidget {
    MyApp({super.key});

    List names = ["Mitch", "Sharon", "Vince", "Kenny", "Kula"];
    // This widget is the root of your application.
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            debugShowCheckedModeBanner: false, // K_24610 不显示右上角的debug标签
            home: FirstPage(),
        ); // K_24617 最后一个反括号对应return 的语句，要用分号结尾
    }
}

// Stack(
//                     alignment: Alignment.topRight,
//                     children: [
//                         Container(
//                             height: 400,
//                             width: 200,
//                             color: Colors.deepPurple,
//                         ),
//                         Container(
//                             height: 300,
//                             width: 150,
//                             color: Colors.deepPurple[400],
//                         ),
//                         Container(
//                             height: 200,
//                             width: 100,
//                             color: Colors.deepPurple[200],
//                         ),
//                     ],
//                 ),

// body: ListView(
//     // K_24617 使用 ListView 代替 Column，以便在屏幕上c滚动
//     scrollDirection: Axis.vertical,
//     children: [
//         Container(
//             height: 400,
//             width: 200,
//             color: Colors.deepPurple,
//         ),
//         Container(
//             height: 400,
//             width: 200,
//             color: Colors.deepPurple[400],
//         ),
//         Container(
//             height: 400,
//             width: 200,
//             color: Colors.deepPurple[200],
//         ),
//     ],
// ),

// backgroundColor: Colors.deepPurple[100], // K_24611 设置背景颜色
// appBar: AppBar(
//     title: Text("锟斤拷",
//         style: TextStyle(
//             fontSize: 36,
//             fontFamily: 'LXGW WenKai', // K_24610 设置为霞鹜文楷的字体
//             color: Colors.white,
//             fontWeight: FontWeight.normal,
//         )),
//     backgroundColor: Colors.deepOrangeAccent, // K_24611 设置标题栏背景颜色
//     elevation: 8,
//     leading: Icon(Icons.menu),
//     actions: [
//         Icon(Icons.search),
//         Icon(Icons.more_vert),
//     ],
// ),

// body: Center(
//     child: Container(
//         height: 200.0,
//         width: 300,
//         // color: Colors.green,
//         decoration: BoxDecoration(
//             color: Colors.blue,
//             border: Border.all(
//                 color: Colors.deepPurpleAccent,
//                 width: 4,
//             ),
//             borderRadius: BorderRadius.circular(20), // K_24610 创建了一个具有统一的圆角半径的边框半径。这里，圆角的半径被设置为 20 像素。
//         ),
//         padding: EdgeInsets.all(16),
//         child: Text("锟斤拷 Kula",
//             style: TextStyle(
//                 fontSize: 36,
//                 fontFamily: 'LXGW WenKai', // K_24610 设置为霞鹜文楷的字体
//                 color: Colors.white,
//                 fontWeight: FontWeight.normal,
//             )),
//         // child: Icon(
//         //     Icons.star,
//         //     size: 100,
//         //     color: Colors.white,
//         // ),
//     ),
// )),
