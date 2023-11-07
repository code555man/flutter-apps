// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Image.asset(
            'images/img.jpg',
            width: 600,
            height: 150,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.all(30),
            child: Column(
              children: [
                Row(
                  children: const [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Sisaket Rajabhat University",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Sisaket, Thailand",
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.red,
                    ),
                    Text(
                      "41",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 10,
                    right: 10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Icon(
                            Icons.phone,
                            color: Colors.blue,
                            size: 40,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "CALL",
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.near_me,
                            color: Colors.blue,
                            size: 40,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "ROUT",
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.share,
                            color: Colors.blue,
                            size: 40,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "SHARE",
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
                  'Alps. Situated 1,578 meters above sea level, it is one of the '
                  'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
                  'half-hour walk through pastures and pine forest, leads you to the '
                  'lake, which warms to 20 degrees Celsius in the summer. Activities '
                  'enjoyed here include rowing, and riding the summer toboggan run.',
                  softWrap: true,
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
          ),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}