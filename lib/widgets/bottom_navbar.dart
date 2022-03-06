import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  final Function currentIndex;
  const BottomNavBar({Key? key, required this.currentIndex}) : super(key: key);

  @override
  _BottomNavBar createState() => _BottomNavBar();
}

class _BottomNavBar extends State<BottomNavBar> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: index,
      onTap: (int i){
        setState(() {
          index = i;
          widget.currentIndex(i);
        });
      },
      type: BottomNavigationBarType.fixed,
      showUnselectedLabels: false,
      selectedItemColor: const Color(0xFF3BAEBF),
      iconSize: 25.0,
      selectedFontSize: 14.0,
      unselectedFontSize: 12.0,
      selectedIconTheme: const IconThemeData(
        size: 32.0,
        color: Color(0xFF3BAEBF)
      ),
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.sports),
          label: 'Clubes'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.emoji_events),
          label: 'Torneos'
        )
      ],

    );
  }
}