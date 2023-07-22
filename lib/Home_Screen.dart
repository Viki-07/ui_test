import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      'Hello Priya!',
                      style: TextStyle(fontSize: 22,fontFamily: 'lora'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      'What do you wanna learn today?',
                      style: TextStyle(fontSize: 15,color: Color(0xFF6D747A)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: OutlinedButton.icon(
                                style: OutlinedButton.styleFrom(
                                    padding: EdgeInsets.all(15),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                    side: BorderSide(color: Colors.blue)),
                                onPressed: () {},
                                icon: Icon(Icons.collections_bookmark_rounded),
                                label: Text('Programs')),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: OutlinedButton.icon(
                                style: OutlinedButton.styleFrom(
                                    padding: EdgeInsets.all(15),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                    side: BorderSide(
                                      color: Colors.blue,
                                    )),
                                onPressed: () {},
                                icon: Icon(Icons.help),
                                label: Text('Get Help')),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: OutlinedButton.icon(
                                style: OutlinedButton.styleFrom(
                                    padding: EdgeInsets.all(15),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                    side: BorderSide(color: Colors.blue)),
                                onPressed: () {},
                                icon: Icon(Icons.book_rounded),
                                label: Text('Learn')),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: OutlinedButton.icon(
                                style: OutlinedButton.styleFrom(
                                    padding: EdgeInsets.all(15),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                    side: BorderSide(
                                      color: Colors.blue,
                                    )),
                                onPressed: () {},
                                icon: Icon(Icons.auto_graph_outlined),
                                label: Text('DD Tracker')),
                          ),
                        )
                      ],
                    ),
                  ),
                ]),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8),
          child: Row(
            children: [
              Text(
                'Programs for you',
                style: TextStyle(fontSize: 22,fontFamily: 'lora'),
              ),
              SizedBox(
                width: 100,
              ),
              Text('View All'),
              IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward))
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              // Padding(
              //   padding: EdgeInsets.only(left: 10),
              //   child: Container(
              //     height: 260,
              //     width: 220,
              //     child: Card(
              //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                    // elevation: 5,
              //       child: Column(
              //         children: [
              //           Row(),
              //           Row(),
              //         ],
              //       ),
              //     ),
              //   ),
              // ),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Container(
                  height: 260,
                  width: 250,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    elevation: 5,
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15)),
                          child: Container(
                              width: double.maxFinite,
                              alignment: Alignment.center,
                              color: Color(0xFFDDE3C2),
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
                                    'LIFESTYLE',
                                    style: TextStyle(
                                        color: Color(0xFF598BED),
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'A complete guide for your \nnew born baby',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    '16 lessons',
                                    style: TextStyle(fontSize: 12),
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
                padding: EdgeInsets.only(left: 10),
                child: Container(
                  height: 260,
                  width: 250,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    elevation: 5,
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15)),
                          child: Container(
                              width: double.maxFinite,
                              alignment: Alignment.center,
                              color: Color(0xFFFFF0D3),
                              height: 140,
                              child: Row(
                                // crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [Image.asset('lib/assets/2.jpeg')],
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
                                    'Working Parents',
                                    style: TextStyle(
                                        color: Color(0xFF598BED),
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Understanding of human\nbehaviour',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    '12 lessons',
                                    style: TextStyle(fontSize: 12),
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
                padding: EdgeInsets.only(left: 10),
                child: Container(
                  height: 260,
                  width: 250,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    elevation: 5,
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15)),
                          child: Container(
                              width: double.maxFinite,
                              alignment: Alignment.center,
                              color: Color(0xFFDDE3C2),
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
                                    'LIFESTYLE',
                                    style: TextStyle(
                                        color: Color(0xFF598BED),
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'A complete guide for your \nnew born baby',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    '16 lessons',
                                    style: TextStyle(fontSize: 12),
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
          padding: EdgeInsets.all(8),
          child: Row(
            children: [
              Text(
                'Events and Exercises',
                style: TextStyle(fontSize: 22,fontFamily: 'lora'),
              ),
              SizedBox(
                width: 60,
              ),
              Text('View All'),
              IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward))
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              // Padding(
              //   padding: EdgeInsets.only(left: 10),
              //   child: Container(
              //     height: 260,
              //     width: 220,
              //     child: Card(
              //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                    // elevation: 5,
              //       child: Column(
              //         children: [
              //           Row(),
              //           Row(),
              //         ],
              //       ),
              //     ),
              //   ),
              // ),

              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Container(
                  height: 285,
                  width: 250,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    elevation: 5,
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15)),
                          child: Container(
                              decoration: BoxDecoration(
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
                                    'BABYCARE',
                                    style: TextStyle(
                                        color: Color(0xFF598BED),
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Understanding of human\nbehaviour',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        '13 Feb, Sunday',
                                        style: TextStyle(fontSize: 12),
                                      ),
                                      SizedBox(
                                        width: 70,
                                      ),
                                      OutlinedButton(
                                        onPressed: () {},
                                        child: Text('Book'),
                                        style: OutlinedButton.styleFrom(
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(18),
                                                side: BorderSide(
                                                    color: Colors.blue))),
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
                padding: EdgeInsets.only(left: 10),
                child: Container(
                  height: 285,
                  width: 250,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    elevation: 5,
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15)),
                          child: Container(
                              decoration: BoxDecoration(
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
                                    'BABYCARE',
                                    style: TextStyle(
                                        color: Color(0xFF598BED),
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Understanding of human\nbehaviour',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        '13 Feb, Sunday',
                                        style: TextStyle(fontSize: 12),
                                      ),
                                      SizedBox(
                                        width: 70,
                                      ),
                                      OutlinedButton(
                                        onPressed: () {},
                                        child: Text('Book'),
                                        style: OutlinedButton.styleFrom(
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(18),
                                                side: BorderSide(
                                                    color: Colors.blue))),
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
                padding: EdgeInsets.only(left: 10),
                child: Container(
                  height: 285,
                  width: 250,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    elevation: 10,
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15)),
                          child: Container(
                              decoration: BoxDecoration(
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
                                    'BABYCARE',
                                    style: TextStyle(
                                        color: Color(0xFF598BED),
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Understanding of human\nbehaviour',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        '13 Feb, Sunday',
                                        style: TextStyle(fontSize: 12),
                                      ),
                                      SizedBox(
                                        width: 70,
                                      ),
                                      OutlinedButton(
                                        onPressed: () {},
                                        child: Text('Book'),
                                        style: OutlinedButton.styleFrom(
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(18),
                                                side: BorderSide(
                                                    color: Colors.blue))),
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
          padding: EdgeInsets.all(8),
          child: Row(
            children: [
              Text(
                'Lessons for you',
                style: TextStyle(fontSize: 22,fontFamily: 'lora'),
              ),
              SizedBox(
                width: 115,
              ),
              Text('View All'),
              IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward))
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              // Padding(
              //   padding: EdgeInsets.only(left: 10),
              //   child: Container(
              //     height: 260,
              //     width: 220,
              //     child: Card(
              //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                    // elevation: 10,
              //       child: Column(
              //         children: [
              //           Row(),
              //           Row(),
              //         ],
              //       ),
              //     ),
              //   ),
              // ),

              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Container(
                  height: 285,
                  width: 250,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    elevation: 10,
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15)),
                          child: Container(
                              decoration: BoxDecoration(
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
                                    'BABYCARE',
                                    style: TextStyle(
                                        color: Color(0xFF598BED),
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Understanding of human\nbehaviour',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17),
                                  ),
                                  SizedBox(
                                    height: 25,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        '3 min',
                                        style: TextStyle(fontSize: 12),
                                      ),
                                      SizedBox(
                                        width: 150,
                                      ),
                                      Icon(
                                        Icons.lock_outline_rounded,
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
              ),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Container(
                  height: 285,
                  width: 250,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    elevation: 10,
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15)),
                          child: Container(
                              decoration: BoxDecoration(
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
                                    'BABYCARE',
                                    style: TextStyle(
                                        color: Color(0xFF598BED),
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Understanding of human\nbehaviour',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17),
                                  ),
                                  SizedBox(
                                    height: 25,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        '1 min',
                                        style: TextStyle(fontSize: 12),
                                      ),
                                      SizedBox(
                                        width: 150,
                                      ),
                                      Icon(
                                        Icons.lock_outline_rounded,
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
              ),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Container(
                  height: 285,
                  width: 250,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    elevation: 5,
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15)),
                          child: Container(
                              decoration: BoxDecoration(
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
                                    'BABYCARE',
                                    style: TextStyle(
                                        color: Color(0xFF598BED),
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Understanding of human\nbehaviour',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17),
                                  ),
                                  SizedBox(
                                    height: 25,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        '3 min',
                                        style: TextStyle(fontSize: 12),
                                      ),
                                      SizedBox(
                                        width: 150,
                                      ),
                                      Icon(
                                        Icons.lock_outline_rounded,
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
              ),
            ],
          ),
        ),
        SizedBox(height: 20,),

      ],
    ));
  }
}
