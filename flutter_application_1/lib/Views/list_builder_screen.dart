import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ListBuildScreen extends StatelessWidget {
  ListBuildScreen({Key? key}) : super(key: key);
  final _mylist = [
    'No 1',
    'No 2',
    'No 3',
    'No 4',
    'No 2',
    'No 2',
    'No 2',
    'No 2',
    'No 2',
    'No 2',
    'No 2',
  ];
  final _colors = [Colors.blue, Colors.yellow, Colors.purple, Colors.accents];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('List builder')),
      body: ListView(
        // crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          // Container(
          //   height: 200,
          //   width: 300,
          //   color: Colors.amber,
          // ),
          // Container(
          //   height: 200,
          //   width: 300,
          //   color: Colors.blue,
          // ),
          // Container(
          //     // height: 200,
          //     // width: 300,
          //     // color: Colors.teal,

          //     ),
          GridView.builder(
            shrinkWrap: true,
            itemCount: 21,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                childAspectRatio: 0.7),
            itemBuilder: (context, index) => Container(
              height: 400,
              width: 200,
              child: Text(_mylist[index]),
              color: index == 2 ? Colors.red : Colors.amber,
            ),
          ),
        ],
      ),
    );
  }
}
