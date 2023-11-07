import 'package:flutter/material.dart';
import 'package:flutter_application_8/strani/slide.dart';

final List<String> mass = [
  'lib/assets/images/cooler.jpg',
  'lib/assets/images/gamepad.jpg',
  'lib/assets/images/huananzhi.jpg',
  'lib/assets/images/keyboard.jpg',
  'lib/assets/images/microphone.jpg',
  'lib/assets/images/monitor.jpg',
  'lib/assets/images/mouse.jpg',
  'lib/assets/images/naushniki.jpg',
  'lib/assets/images/processor.jpg',
  'lib/assets/images/videocard.jpg',
];
final List<String> mass1 = [
  'Кулер',
  'Геймпад',
  'Материнская плата',
  'Клавиатура',
  'Микрофон',
  'Монитор',
  'Компьютерная мышь',
  'Наушники',
  'Процессор',
  'Видеокарта'
];
final List<String> mass2 = [
  '500 руб',
  '5000 руб',
  '8000 руб',
  '4000 руб',
  '600 руб',
  '10000 руб',
  '1500 руб',
  '60000 руб',
  '12000 руб',
  '40000 руб'
];

void main() {
  runApp(const MaterialApp(
    home: ListViewLesson(),
    debugShowCheckedModeBanner: false,
  ));
}

class ListViewLesson extends StatelessWidget {
  const ListViewLesson({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aliexpress'),
        centerTitle: true,
        backgroundColor:  Colors.orange,
      ),
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, childAspectRatio: 1),
          itemCount: 10,
          itemBuilder: ((context, index) {
            return Container(
              width: MediaQuery.of(context).size.width / 2,
              decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(16)),
              margin: EdgeInsets.all(8),
              child: Column(
                children: [
                  Image.asset(
                    "${mass[index]}",
                    height: 200,
                    width: 170,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          mass1[index],
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          mass2[index],
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            IconButton.filledTonal(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Slide()));
                                },
                                color: Colors.black26,
                                iconSize: 20,
                                icon: const Icon(
                                  Icons.add_shopping_cart,
                                )),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            );
          })),
    );
  }
}
