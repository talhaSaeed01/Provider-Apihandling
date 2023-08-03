import 'package:flutter/material.dart';

class BoardTabView extends StatefulWidget {
  const BoardTabView({super.key});

  @override
  State<BoardTabView> createState() => _BoardTabViewState();
}

class _BoardTabViewState extends State<BoardTabView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Text("2"),
        ),
      ),
    );
  }
}
