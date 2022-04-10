import 'package:flutter/material.dart';

class Footer extends StatefulWidget {
  const Footer();

  @override
  _Footer createState() => _Footer();
}

class _Footer extends State {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.view_stream_outlined),
          label: 'List',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add_a_photo_outlined),
          label: 'Camera',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.all_inbox),
          label: 'Favorite',
        ),
      ],
      // currentIndex: _selectedIndex,
      // selectedItemColor: Colors.amber[800],
      // onTap: _onItemTapped,
    );
  }
}