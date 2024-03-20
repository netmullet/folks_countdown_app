import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:your_parents/components/reusable_form.dart';
import 'package:your_parents/components/country_form.dart';

class InputPage extends StatefulWidget {
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  final Map<String, int> averageLifespans = {
    '日本': 80,
    'アメリカ': 70,
  };

  String selectedCountry = '日本';
  int mothersAge = 0;
  int fathersAge = 0;
  int frequency = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('親とあと何回会えるか計算機'),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                const Text('親が住んでいる国は？'),
                DropdownButton<String>(
                  value: selectedCountry,
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedCountry = newValue!;
                    });
                  },
                  items: averageLifespans.keys
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Text('母親の年齢は？'),
              Container(
                padding: EdgeInsets.all(20.0),
                child: TextField(
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  decoration: InputDecoration(
                    filled: true,
                  ),
                  onChanged: (String value) {
                    setState(() {
                      mothersAge = int.parse(value);
                    });
                  },
                ),
              ),
              Text('父親の年齢は？'),
              Container(
                padding: EdgeInsets.all(20.0),
                child: TextField(
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  decoration: InputDecoration(
                    filled: true,
                  ),
                  onChanged: (String value) {
                    setState(() {
                      fathersAge = int.parse(value);
                    });
                  },
                ),
              ),
              const Text('1年間で親に何回会う？'),
              Container(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  decoration: const InputDecoration(
                    filled: true,
                  ),
                  onChanged: (String value) {
                    setState(() {
                      frequency = int.parse(value);
                    });
                  },
                ),
              ),
            ],
          ),
          ElevatedButton(onPressed: () {}, child: Text('計算する')),
        ],
      ),
    );
  }
}
