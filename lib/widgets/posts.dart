import 'package:flutter/material.dart';

import '../utils/media_query.dart';

class Posts extends StatelessWidget {
  const Posts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.all(1.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.green, width: 3),
                    shape: BoxShape.circle),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 2),
                      shape: BoxShape.circle),
                  child: const CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage('assets/images/2.jpg'),
                  ),
                ),
              ),
              title: Text(
                'Saqlain kamal',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                'Flutter',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              trailing: Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.red, width: 1),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Icon(
                  Icons.more_vert,
                  size: 30,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                    decoration: BoxDecoration(),
                    height: screenHeight(context) * 0.20,
                    width: screenWidth(context) * 0.6,
                    child: Image.asset('assets/images/Group1166.png')),
                Column(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(bottom: 8.0),
                      child: Icon(
                        Icons.favorite,
                        size: 30,
                        color: Colors.red,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 8),
                      child: Icon(
                        Icons.message,
                        size: 25,
                      ),
                    ),
                    Icon(
                      Icons.send,
                      size: 25,
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 14),
              child: Text(
                'Flutter Will Change The World For Development ',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 14.0),
              child: Text(
                'Flutter Will Change The World For Development ',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              children: [
                Stack(
                  //  alignment: Alignment.topLeft,
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      // left: 20,
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.red, width: 4),
                              borderRadius: BorderRadius.circular(30)),
                          child: CircleAvatar(
                            backgroundColor: Colors.red[200],
                            backgroundImage: AssetImage('assets/images/2.jpg'),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 30,
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.red, width: 4),
                              borderRadius: BorderRadius.circular(30)),
                          child: CircleAvatar(
                            backgroundColor: Colors.red[200],
                            backgroundImage: AssetImage('assets/images/2.jpg'),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 60,
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.red, width: 4),
                              borderRadius: BorderRadius.circular(30)),
                          child: CircleAvatar(
                            backgroundColor: Colors.red[200],
                            backgroundImage: AssetImage('assets/images/2.jpg'),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 85,
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.red, width: 4),
                              borderRadius: BorderRadius.circular(30)),
                          child: CircleAvatar(
                            backgroundColor: Colors.red[200],
                            backgroundImage: AssetImage('assets/images/2.jpg'),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 90),
                  child: Text(
                    'Liked by ',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  'Kamal',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    color: Colors.red,
                  ),
                ),
                Text(
                  ' and 10K other ',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
