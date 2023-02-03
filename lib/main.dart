import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const ListViewDemo(),
    );
  }
}

class ListViewDemo extends StatefulWidget {
  const ListViewDemo({Key? key}) : super(key: key);

  @override
  State<ListViewDemo> createState() => _ListViewDemoState();
}

class _ListViewDemoState extends State<ListViewDemo> {

  List myNumbers = numbers;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List view demo'),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: myNumbers.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: ListTile(
                        leading: CircleAvatar(),
                        title: Text(
                          myNumbers[index]['number'].toString(),
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w500,
                              color: myNumbers[index]['flag']
                                  ?Colors.green:Colors.red
                          ),
                        ),
                      ),
                    );
                  }
              ),
            )
          ],
        ),
      ),
    );
  }
}

List numbers = [
  {
    'number' : 1,
    'flag' : true,
  },
  {
    'number' : 2,
    'flag' : false,
  },
  {
    'number' : 3,
    'flag' : true,
  },
  {
    'number' : 4,
    'flag' : false,
  },
  {
    'number' : 5,
    'flag' : true,
  },
  {
    'number' : 6,
    'flag' : true,
  },
  {
    'number' : 7,
    'flag' : false,
  },
  {
    'number' : 8,
    'flag' : true,
  },
  {
    'number' : 9,
    'flag' : true,
  },
  {
    'number' : 10,
    'flag' : false,
  },
];