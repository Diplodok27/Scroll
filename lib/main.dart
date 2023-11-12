import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final List<String> alphabets = <String>[
    'Tom', 'Alice', 'Bob', 'Sam', 'Kate',
    'Alex', 'Edgar', 'Oleg' ,'Marianna', 'Ruslan', 'Beatrice',
  ];

  void temp() {
    print('I like c#');
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(title: Text('Skokov-ISP27'), ),
          body: Column(
            children: [
              Expanded( //Верх
                child: ListView.builder(
                  itemCount: alphabets.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: 50,
                      margin: EdgeInsets.all(2),
                      color: Colors.lightBlueAccent,
                      child: Center(
                        child: Text(
                          '${alphabets[index]}',
                          style: TextStyle(fontSize: 35, color: Colors.white),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Expanded( //Низ
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: alphabets.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      width: 100,
                      margin: EdgeInsets.all(2),
                      color: Colors.lightBlueAccent,
                      child: Center(
                        child: Text(
                          '${alphabets[index]}',
                          style: TextStyle(fontSize: 35, color: Colors.white),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () => temp(),
          ),
        ));
  }
}
