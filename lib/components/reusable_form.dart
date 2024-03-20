import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ReusableForm extends StatelessWidget {
  ReusableForm({required this.title});

  final String? title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Enter your mothers age'),
        Container(
          padding: EdgeInsets.all(20.0),
          child: TextField(
            keyboardType: TextInputType.number,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            decoration: InputDecoration(
              filled: true,
            ),
          ),
        ),
      ],
    );
  }
}
