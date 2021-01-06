import 'package:flutter/material.dart';
import 'package:media/widgets/mediaScreen.dart';

void main() async {
  runApp(MainScreen());
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.vertical,
      children: List.generate(7, (index){
          return Container(
            padding: EdgeInsets.only(top: MediaQuery.of(context).viewPadding.top),
            child: MediaScreen()
          );
        }
      )
    );
  }
}

