// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
    runApp(MyApp());
}

class MyApp extends StatelessWidget {
    MyApp({super.key});

    // This widget is the root of your application.
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            debugShowCheckedModeBanner: false, // K_24610 不显示右上角的debug标签
            home: Scaffold(
                backgroundColor: Colors.deepPurple[100], // K_24611 设置背景颜色
                appBar: AppBar(
                    title: Text("锟斤拷",
                        style: TextStyle(
                            fontSize: 36,
                            fontFamily: 'LXGW WenKai', // K_24610 设置为霞鹜文楷的字体
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                        )),
                    backgroundColor: Colors.deepOrangeAccent, // K_24611 设置标题栏背景颜色
                    elevation: 8,
                    leading: Icon(Icons.menu),
                    actions: [
                        Icon(Icons.search),
                        Icon(Icons.more_vert),
                    ],
                ),
                body: Center(
                    child: Container(
                        height: 200.0,
                        width: 300,
                        // color: Colors.green,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            border: Border.all(
                                color: Colors.deepPurpleAccent,
                                width: 4,
                            ),
                            borderRadius: BorderRadius.circular(20), // K_24610 创建了一个具有统一的圆角半径的边框半径。这里，圆角的半径被设置为 20 像素。
                        ),
                        padding: EdgeInsets.all(16),
                        child: Text("锟斤拷 Kula",
                            style: TextStyle(
                                fontSize: 36,
                                fontFamily: 'LXGW WenKai', // K_24610 设置为霞鹜文楷的字体
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                            )),
                        // child: Icon(
                        //     Icons.star,
                        //     size: 100,
                        //     color: Colors.white,
                        // ),
                    ),
                )),
        );
    }
}
