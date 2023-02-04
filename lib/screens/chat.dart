import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:social_app/utils/media_query.dart';

import '../widgets/browse_media.dart';

class Chat extends StatelessWidget {
  const Chat({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  border: GradientBoxBorder(
                    gradient:
                        LinearGradient(colors: [Colors.yellow, Colors.red]),
                    width: 3,
                  ),
                ),
                height: 80,
                child: Image.asset('assets/images/2.jpg'),
              ),
              title: Text('Saqlain Kamal'),
              subtitle: Text(
                'Online',
                style: TextStyle(color: Colors.green, fontSize: 15),
              ),
              trailing: SizedBox(
                width: 70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.video_camera_back,
                      size: 30,
                      color: Colors.red,
                    ),
                    Icon(
                      Icons.call,
                      size: 30,
                      color: Colors.green,
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(20)),
            child: const Text(
              'yesterday',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
          ),
          SizedBox(
            height: screenHeight(context) * 0.08,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                Container(
                  height: screenHeight(context) * 0.48,
                  child: ListView(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 168, 195, 209),
                                borderRadius: BorderRadius.circular(20)),
                            child: const Text(
                              'Who',
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: screenHeight(context) * 0.08,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 168, 195, 209),
                                borderRadius: BorderRadius.circular(20)),
                            child: const Text(
                              'Saqlain',
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: screenHeight(context) * 0.08,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 168, 195, 209),
                                borderRadius: BorderRadius.circular(20)),
                            child: const Text(
                              'Hi',
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: screenHeight(context) * 0.08,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 168, 195, 209),
                                borderRadius: BorderRadius.circular(20)),
                            child: const Text(
                              'how are you!',
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: screenHeight(context) * 0.08,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 168, 195, 209),
                                borderRadius: BorderRadius.circular(20)),
                            child: const Text(
                              'how are you!',
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: screenHeight(context) * 0.03,
                ),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 168, 195, 209),
                          borderRadius: BorderRadius.circular(20)),
                      child: Icon(
                        Icons.add,
                        color: Colors.blue,
                        size: 30,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 40, vertical: 15),
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 168, 195, 209),
                              borderRadius: BorderRadius.circular(20)),
                          child: Text(
                            'Write a Message',
                            style: TextStyle(fontSize: 18),
                          )),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: screenHeight(context) * 0.02,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Browse_Media(
                name: 'Image',
                icon: Icons.photo_album_outlined,
                color: Colors.blue,
              ),
              Browse_Media(
                name: 'location',
                icon: Icons.location_on,
                color: Colors.red,
              ),
              Browse_Media(
                name: 'File',
                icon: Icons.file_copy,
                color: Colors.orange,
              ),
              Browse_Media(
                name: 'Contact',
                icon: Icons.phone_callback_outlined,
                color: Colors.purple,
              ),
            ],
          )
        ],
      ),
    ));
  }
}
