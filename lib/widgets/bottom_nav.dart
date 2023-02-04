import 'package:flutter/material.dart';
import 'package:social_app/app/router.dart';
import 'package:social_app/screens/messges.dart';

class BottomNav extends StatefulWidget {
  int number;
  BottomNav({Key? key, required this.number}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: GestureDetector(
              onTap: (() {
                Navigator.of(context).pushNamed(AppRouter.home);
              }),
              child: Icon(Icons.home)),
          //backgroundColor: Color.fromARGB(255, 62, 111, 151),
          label: 'home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          //backgroundColor: Colors.green[300],
          label: 'Person',
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.explore),
          //backgroundColor: Color.fromARGB(255, 243, 173, 69),
          label: 'Explore',
        ),
        BottomNavigationBarItem(
          icon: GestureDetector(
              onTap: (() {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => Messages())));
              }),
              child: Icon(Icons.favorite)),
          // backgroundColor: Colors.indigo,
          label: 'Favorite',
        ),
      ],
      currentIndex: widget.number,
      unselectedItemColor: Colors.black,
      selectedItemColor: Colors.amber,
      selectedFontSize: 20,
      showSelectedLabels: true,
      iconSize: 35,
      selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
      onTap: (index) {
        setState(() {
          widget.number = index;
        });
      },
    );
  }
}
