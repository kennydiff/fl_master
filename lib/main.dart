import 'package:flutter/material.dart';

void main() {
    runApp(MyApp());
}

class MyApp extends StatelessWidget {
    MyApp({super.key});
    /*
    DATASTRUCTURES
    --------------------------------
    */
    List numbers = [1, 2, 3, 4, 5];

    List<String> names = ["Mitch", "Sharon", "Vince"];

    Map user = {
        "name": "Mitch",
        'age': 29,
        'email': 'ddd@gmail.com',
    };

    void printNumbers() {
        for (var i = 0; i < numbers.length; i++) {
            print(numbers[i]);
        }
    }

    void printNames() {
        for (var i = 0; i < names.length; i++) {
            print(names[i]);
        }
    }

    // This widget is the root of your application.
    @override
    Widget build(BuildContext context) {
        print(user["age"]);
        return const MaterialApp(
            debugShowCheckedModeBanner: false, // K_24610 不显示右上角的debug标签
            home: Scaffold(),
        );
    }
}
