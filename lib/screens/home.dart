import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gradient_borders/gradient_borders.dart';
import 'package:social_app/Models/story.dart';
import 'package:social_app/screens/chat.dart';
import 'package:social_app/utils/media_query.dart';

import '../widgets/posts.dart';
import '../widgets/share.dart';
import '../widgets/bottom_nav.dart';

class Home extends StatelessWidget {
  Home({
    super.key,
  });

  List names = [
    'Nisma',
    'jamal',
    'Zeshan',
    'Zeshan',
    'Zeshan',
    'Zeshan',
    'Zeshan',
    'Zeshan',
    'Zeshan',
  ];

  int selected = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 141, 141, 141),
        body: Column(
          // mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              flex: 3,
              child: Container(
                color: Colors.white,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 45,
                            width: 70,
                            child: Image.asset('assets/images/codvets.jpg'),
                          ),
                        ),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 38.0),
                            child: Row(
                              children: [
                                Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Container(
                                      width: 50,
                                      height: 50,
                                      child: Card(
                                        elevation: 10,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        child: const Icon(
                                          Icons.notifications_none,
                                          size: 25,
                                          color: Colors.blueGrey,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      right: 10,
                                      child: Container(
                                        width: 7,
                                        height: 7,
                                        decoration: const BoxDecoration(
                                            boxShadow: [
                                              BoxShadow(
                                                blurRadius: 10,
                                              )
                                            ],
                                            shape: BoxShape.circle,
                                            color: Color.fromARGB(
                                                255, 248, 25, 9)),
                                      ),
                                    ),
                                  ],
                                ),
                                Stack(
                                  clipBehavior: Clip.none,
                                  //alignment: Alignment.topRight,
                                  children: [
                                    Container(
                                      width: 50,
                                      height: 50,
                                      child: Card(
                                        elevation: 10,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        child: GestureDetector(
                                          onTap: (() {
                                            Navigator.push(
                                                (context),
                                                MaterialPageRoute(
                                                    builder: ((context) =>
                                                        Chat())));
                                          }),
                                          child: const Icon(
                                            Icons.message_outlined,
                                            size: 25,
                                            color: Colors.blueGrey,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      right: -30,
                                      top: -15,
                                      child: Container(
                                        alignment: Alignment.center,
                                        width: 60,
                                        height: 25,
                                        decoration: BoxDecoration(
                                          boxShadow: const [
                                            BoxShadow(
                                              blurRadius: 10,
                                              blurStyle: BlurStyle.normal,
                                            )
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: const Color.fromARGB(
                                              255, 246, 25, 9),
                                        ),
                                        child: const Text(
                                          '333+',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 17,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      width: screenHeight(context),
                      height: screenHeight(context) * 0.15,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: names.length,
                        itemBuilder: ((context, index) {
                          final name = names[index];
                          //final Id = args.story.id;
                          return Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 4.0),
                                  child: Container(
                                    // width: 80,
                                    decoration: BoxDecoration(
                                        border: GradientBoxBorder(
                                          gradient: LinearGradient(colors: [
                                            Colors.yellow,
                                            Colors.red
                                          ]),
                                          width: 3,
                                        ),
                                        shape: BoxShape.circle),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.white, width: 2),
                                          shape: BoxShape.circle),
                                      child: const CircleAvatar(
                                        radius: 30,
                                        backgroundImage:
                                            AssetImage('assets/images/2.jpg'),
                                      ),
                                    ),
                                  ),
                                ),
                                Text(name),
                              ],
                            ),
                          );
                        }),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            const Expanded(
              flex: 3,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 18),
                child: SharePost(),
              ),
            ),
            const SizedBox(
              height: 1,
            ),
            Expanded(
              flex: 4,
              child: ListView(
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    child: Posts(),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
        bottomNavigationBar: BottomNav(number: 0),
      ),
    );
    // return Text(args.story.name);
  }
}

class HomeArgs {
  final Story story;
  HomeArgs({required this.story});
}
