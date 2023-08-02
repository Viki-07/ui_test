import 'package:flutter/material.dart';
import 'package:ui_test/models/Lesson_Model.dart';
import 'package:ui_test/models/Program_Model.dart';

class HomeScreen extends StatelessWidget {
  ProgramApi programData;
  LessonApi lessonData;
  HomeScreen({super.key, required this.programData, required this.lessonData});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [
        Container(
          color: const Color(0xFFEEF3FD),
          width: double.maxFinite,
          height: 260,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      'Hello Priya!',
                      style: TextStyle(fontSize: 22, fontFamily: 'lora'),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      'What do you wanna learn today?',
                      style: TextStyle(fontSize: 15, color: Color(0xFF6D747A)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: OutlinedButton.icon(
                                style: OutlinedButton.styleFrom(
                                    padding: const EdgeInsets.all(15),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                    side: const BorderSide(color: Colors.blue)),
                                onPressed: () {},
                                icon: const Icon(
                                    Icons.collections_bookmark_rounded),
                                label: const Text('Programs')),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: OutlinedButton.icon(
                                style: OutlinedButton.styleFrom(
                                    padding: const EdgeInsets.all(15),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                    side: const BorderSide(
                                      color: Colors.blue,
                                    )),
                                onPressed: () {},
                                icon: const Icon(Icons.help),
                                label: const Text('Get Help')),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: OutlinedButton.icon(
                                style: OutlinedButton.styleFrom(
                                    padding: const EdgeInsets.all(15),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                    side: const BorderSide(color: Colors.blue)),
                                onPressed: () {},
                                icon: const Icon(Icons.book_rounded),
                                label: const Text('Learn')),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: OutlinedButton.icon(
                                style: OutlinedButton.styleFrom(
                                    padding: const EdgeInsets.all(15),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                    side: const BorderSide(
                                      color: Colors.blue,
                                    )),
                                onPressed: () {},
                                icon: const Icon(Icons.auto_graph_outlined),
                                label: const Text('DD Tracker')),
                          ),
                        )
                      ],
                    ),
                  ),
                ]),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8),
          child: Row(
            children: [
              const Text(
                'Programs for you',
                style: TextStyle(fontSize: 22, fontFamily: 'lora'),
              ),
              const SizedBox(
                width: 100,
              ),
              const Text('View All'),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.arrow_forward))
            ],
          ),
        ),
        SizedBox(
          // height: 400,
          height: 260,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: programData.count,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.only(left: 10),
                child: SizedBox(
                  height: 260,
                  width: 250,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    elevation: 5,
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15)),
                          child: Container(
                              width: double.maxFinite,
                              alignment: Alignment.center,
                              color: const Color(0xFFDDE3C2),
                              height: 140,
                              child: Row(
                                // crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [Image.asset('lib/assets/1.jpg')],
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    programData.items[index].category
                                        .toUpperCase(),
                                    style: const TextStyle(
                                        color: Color(0xFF598BED),
                                        fontWeight: FontWeight.w600),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    programData.items[index].name,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    '${programData.items[index].lesson} lessons',
                                    style: const TextStyle(fontSize: 12),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(8),
          child: Row(
            children: [
              const Text(
                'Events and Exercises',
                style: TextStyle(fontSize: 22, fontFamily: 'lora'),
              ),
              const SizedBox(
                width: 60,
              ),
              const Text('View All'),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.arrow_forward))
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: SizedBox(
                  height: 285,
                  width: 250,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    elevation: 5,
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15)),
                          child: Container(
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage('lib/assets/3.jpeg'),
                                ),
                              ),
                              width: double.maxFinite,
                              alignment: Alignment.center,
                              height: 140,
                              child: FittedBox(
                                  fit: BoxFit.fill,
                                  child: Image.asset(
                                    'lib/assets/3.jpeg',
                                  ))),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'BABYCARE',
                                    style: TextStyle(
                                        color: Color(0xFF598BED),
                                        fontWeight: FontWeight.w600),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const Text(
                                    'Understanding of human\nbehaviour',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      const Text(
                                        '13 Feb, Sunday',
                                        style: TextStyle(fontSize: 12),
                                      ),
                                      const SizedBox(
                                        width: 70,
                                      ),
                                      OutlinedButton(
                                        onPressed: () {},
                                        style: OutlinedButton.styleFrom(
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(18),
                                                side: const BorderSide(
                                                    color: Colors.blue))),
                                        child: const Text('Book'),
                                      )
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: SizedBox(
                  height: 285,
                  width: 250,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    elevation: 5,
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15)),
                          child: Container(
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage('lib/assets/3.jpeg'),
                                ),
                              ),
                              width: double.maxFinite,
                              alignment: Alignment.center,
                              height: 140,
                              child: FittedBox(
                                  fit: BoxFit.fill,
                                  child: Image.asset(
                                    'lib/assets/3.jpeg',
                                  ))),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'BABYCARE',
                                    style: TextStyle(
                                        color: Color(0xFF598BED),
                                        fontWeight: FontWeight.w600),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const Text(
                                    'Understanding of human\nbehaviour',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      const Text(
                                        '13 Feb, Sunday',
                                        style: TextStyle(fontSize: 12),
                                      ),
                                      const SizedBox(
                                        width: 70,
                                      ),
                                      OutlinedButton(
                                        onPressed: () {},
                                        style: OutlinedButton.styleFrom(
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(18),
                                                side: const BorderSide(
                                                    color: Colors.blue))),
                                        child: const Text('Book'),
                                      )
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: SizedBox(
                  height: 285,
                  width: 250,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    elevation: 10,
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15)),
                          child: Container(
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage('lib/assets/3.jpeg'),
                                ),
                              ),
                              width: double.maxFinite,
                              alignment: Alignment.center,
                              height: 140,
                              child: FittedBox(
                                  fit: BoxFit.fill,
                                  child: Image.asset(
                                    'lib/assets/3.jpeg',
                                  ))),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'BABYCARE',
                                    style: TextStyle(
                                        color: Color(0xFF598BED),
                                        fontWeight: FontWeight.w600),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const Text(
                                    'Understanding of human\nbehaviour',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      const Text(
                                        '13 Feb, Sunday',
                                        style: TextStyle(fontSize: 12),
                                      ),
                                      const SizedBox(
                                        width: 70,
                                      ),
                                      OutlinedButton(
                                        onPressed: () {},
                                        style: OutlinedButton.styleFrom(
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(18),
                                                side: const BorderSide(
                                                    color: Colors.blue))),
                                        child: const Text('Book'),
                                      )
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8),
          child: Row(
            children: [
              const Text(
                'Lessons for you',
                style: TextStyle(fontSize: 22, fontFamily: 'lora'),
              ),
              const SizedBox(
                width: 115,
              ),
              const Text('View All'),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.arrow_forward))
            ],
          ),
        ),

        // const SizedBox(height: 20,),
        SizedBox(
          // height: 400,
          height: 285,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: lessonData.count,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.only(left: 10),
                child: SizedBox(
                  height: 285,
                  width: 250,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    elevation: 5,
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15)),
                          child: Container(
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage('lib/assets/3.jpeg'),
                                ),
                              ),
                              width: double.maxFinite,
                              alignment: Alignment.center,
                              height: 140,
                              child: FittedBox(
                                  fit: BoxFit.fill,
                                  child: Image.asset(
                                    'lib/assets/3.jpeg',
                                  ))),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    lessonData.items[index].category
                                        .toUpperCase(),
                                    style: const TextStyle(
                                        color: Color(0xFF598BED),
                                        fontWeight: FontWeight.w600),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  SizedBox(
                                    width: 220,
                                    height: 40,
                                    child: Text(
                                      maxLines: 2,
                                      lessonData.items[index].name,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 25,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        '${lessonData.items[index].duration} min',
                                        style: const TextStyle(fontSize: 12),
                                      ),
                                      const SizedBox(
                                        width: 150,
                                      ),
                                      Icon(
                                        lessonData.items[index].locked
                                            ? Icons.lock_outline_rounded
                                            : Icons.lock_open_outlined,
                                        color: Colors.grey,
                                      )
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    ));
  }
}
