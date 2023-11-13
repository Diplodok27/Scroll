import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final List<String> alphabets = <String>[
    'Gold Retriever', 'Beagle', 'Corgi', 'Dachshund', 'Husky', 'Shiba Inu', 'Yorkshire Terrier', 'Pitbull', 'Fox Terrier', 'Alabai'
  ];
  final List<String> pets = <String>[
    'https://w.forfun.com/fetch/40/40bbc0edb4ad1ab233dc4ee5e7ce7ff3.jpeg',
    'https://pichold.ru/wp-content/uploads/2020/12/604139_original.jpg',
    'https://i3.imageban.ru/out/2023/03/07/04af3ebe78a69fa8dcf85adc137d291e.jpg',
    'http://klublady.ru/uploads/posts/2022-02/1645019184_35-klublady-ru-p-shokoladnaya-taksa-foto-38.jpg',
    'https://avatars.mds.yandex.net/i?id=651c4bc04c3aa96ecefb00f25cd081b72c4a575a-9851898-images-thumbs&n=13',
    'https://petnaobed.ru/wp-content/uploads/posts/cd682e92ae170175557d34c867856503.jpg',
    'https://i3.imageban.ru/out/2023/03/07/768c2b7b2ccdf2be2dc8b10546181d0b.jpg',
    'https://sportishka.com/uploads/posts/2022-11/1667476790_4-sportishka-com-p-nakachennii-pitbul-oboi-4.jpg',
    'https://i.pinimg.com/736x/24/38/f8/2438f883c9e87b97145f1440452a3634--wire-fox-terriers-foxes.jpg',
    'https://sobakemozhno.ru/wp-content/uploads/2020/11/alabaj-ili-sredneaziatskaja-ovcharka-21.jpg',
  ];

  void temp() {
    print('Pets');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Список собак'),),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: alphabets.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 100,
                    margin: EdgeInsets.all(2),
                    color: Colors.lightBlueAccent,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          '${alphabets[index]}',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        Image.network(
                          '${pets[index]}',
                          height: 80,
                          width: 80,
                        ),
                      ],
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
      ),
    );
  }
}
