import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class SharePost extends StatelessWidget {
  const SharePost({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.white),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: Container(
                        decoration: const BoxDecoration(
                            border: GradientBoxBorder(
                              gradient: LinearGradient(
                                colors: [
                                  Colors.yellow,
                                  Colors.red,
                                ],
                              ),
                              width: 3,
                            ),
                            shape: BoxShape.circle),
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white, width: 2),
                              shape: BoxShape.circle),
                          child: CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage('assets/images/2.jpg'),
                          ),
                        ),
                      ),
                    ),
                    Text('Type Messges.....')
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 8.0),
                child: Container(child: Icon(Icons.edit)),
              )
            ],
          ),
          const Divider(
            color: Colors.white,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                    Icon(Icons.emoji_emotions),
                    Icon(Icons.photo_album),
                    Icon(Icons.my_location),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: const LinearGradient(
                        colors: [Colors.yellow, Colors.deepOrange])),
                child: OutlinedButton(
                    style: OutlinedButton.styleFrom(side: BorderSide.none),
                    onPressed: () {},
                    child: const Text(
                      'Share',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    )),
              )
            ],
          )
        ],
      ),
    );
  }
}
