// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
                body: Column(
                    mainAxisAlignment: MainAxisAlignment.center, // K_24610 main 是主轴(中线对齐)  Axis是轴/轴线的意思, 默认是 start
                    crossAxisAlignment:
                        CrossAxisAlignment.start, // K_24610 cross 是交叉轴/边线对齐? 选左边线(start),中线,还是右边线(end)对齐 默认是 center
                    children: [
                        Expanded(
                            flex: 1,
                            child: Container(
                                height: 200,
                                // width: 200,
                                color: Colors.deepPurple,
                            ),
                        ),
                        Expanded(
                            flex:
                                2, // K_24610 flex 是这个widget在整个屏幕里所有(expanded)的比例  所有expand可用的总权数是: 1+2+2 = 5 , 这个widget就会占用2/5的屏幕
                            child: Container(
                                height: 200,
                                // width: 200,
                                color: Colors.green,
                            ),
                        ),
                        Expanded(
                            flex: 2,
                            child: Container(
                                // height: 200,
                                // width: 200,
                                color: Colors.black12,
                            ),
                        ),
                    ],
                ),

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
            ),
        );
    }
}
