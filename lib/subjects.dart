import 'package:flutter/material.dart';
void main()
{
  runApp(Screen3());
}
class Screen3 extends StatefulWidget {
  const Screen3({super.key});

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("Syllabus")
        ],
      ),
    );
  }
}