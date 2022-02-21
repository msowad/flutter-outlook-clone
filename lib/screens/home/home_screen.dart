import 'package:flutter/material.dart';
import 'package:outlook_clone/components/side_menu.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: const [
          SideMenu(),
        ],
      ),
    );
  }
}
