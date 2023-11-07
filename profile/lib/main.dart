import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Profile'),
    );
  }
}

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
            const Center(
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Center(
                      child: Row(
                        children: [
                          Icon(
                            Icons.person,
                            color: Colors.black,
                            size: 20,
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    ' Surachai Sonachit',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(400.0),
              child: Image.network(
                  'https://img-9gag-fun.9cache.com/photo/az2v6Lq_460swp.webp',
                  width: 200,
                  height: 200,
                  fit: BoxFit.cover),
            ),
            const Padding(
              padding: EdgeInsets.all(20),
              child: Center(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 20,
                        left: 10,
                        right: 10,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Icon(
                                Icons.contact_mail,
                                color: Colors.blue,
                                size: 40,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Mail",
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Icon(
                                Icons.facebook,
                                color: Colors.blue,
                                size: 40,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Facebook",
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Icon(
                                Icons.play_circle,
                                color: Colors.blue,
                                size: 40,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Youtube",
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
                      height: 50,
                    ),
                    Text(
                      'Hi, i\'m Surachai Sonachit'
                      'I am a person who likes to learn by myself and is a student.'
                      'Passion for coding I\'ve created some fun projects on my github. Please follow along.',
                      softWrap: true,
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
