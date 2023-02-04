import 'package:flutter/material.dart';

class Browse_Media extends StatelessWidget {
  Browse_Media({
    required this.name,
    required this.icon,
    required this.color,
    Key? key,
  }) : super(key: key);
  String name;
  IconData icon;
  Color color;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(18),
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(30)),
          child: Icon(
            icon,
            color: Colors.white,
          ),
        ),
        Text(
          name,
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
