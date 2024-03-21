import 'package:flutter/material.dart';

class ResultPage extends StatefulWidget {

  ResultPage({required this.result});

  final String result;

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('親とあと何回会えるか計算機'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              // alignment: Alignment.bottomLeft,
              child: const Text(
                '結果',
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(widget.result),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
