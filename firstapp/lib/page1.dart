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
          centerTitle: true,
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Strawberry Pavola',
                style: TextStyle(fontSize: 26),
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.all(18.0),
                child: Text(
                    'Row and Column are basic primitiveRow and Column are\n Row and Column are basic primitiveRow and Column are\n Row and Column are basic primitiveRow and Column are\n Row and Column are basic primitiveRow and Column are\n'),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.yellow[500]),
                      Icon(Icons.star, color: Colors.yellow[500]),
                      Icon(Icons.star, color: Colors.yellow[500]),
                      Icon(Icons.star, color: Colors.yellow[400]),
                      Icon(Icons.star, color: Colors.yellow[500]),
                    ],
                  ),
                  const Text(
                    '170 revice',
                    style: TextStyle(fontSize: 26, color: Colors.red),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Icon(
                        Icons.person,
                        color: Colors.blue,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text('person'),
                      SizedBox(
                        height: 10,
                      ),
                      Text('25 min'),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.cookie,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text('COOK'),
                      SizedBox(
                        height: 10,
                      ),
                      Text('25 min'),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.feed),
                      SizedBox(
                        height: 10,
                      ),
                      Text('FEEDS'),
                      SizedBox(
                        height: 10,
                      ),
                      Text('25 min'),
                    ],
                  )
                ],
              ),
              const Expanded(child: 
                Center(
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: 
                      Text("6412732113\nSurachai Sonachit", style: TextStyle(fontSize: 18, color: Colors.blue),),
                    ),
                )
              )
            ],
          ),
        ));
  }
}