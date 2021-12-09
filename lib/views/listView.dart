import 'package:flutter/material.dart';

class MyListViewPage extends StatefulWidget {
  const MyListViewPage({Key? key}) : super(key: key);

  @override
  State<MyListViewPage> createState() => _MyListViewPageState();
}

class _MyListViewPageState extends State<MyListViewPage> {
  final List<String> entries = <String>['A', 'B', 'C'];
  final List<int> colorCodes = <int>[600, 500, 100];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        //backgroundColor: Colors.black,



      body: Container(

        // child:ListView(
        //   shrinkWrap: true,
        //   padding: const EdgeInsets.all(20.0),
        //   children: const <Widget>[
        //     Text("I'm dedicating every day to you"),
        //     Text('Domestic life was never quite my style'),
        //     Text('When you smile, you knock me out, I fall apart'),
        //     Text('And I thought I was so smart'),
        //   ],
        // ),

        child: ListView.separated(
          padding: const EdgeInsets.all(8),
          itemCount: entries.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 50,
              color: Colors.amber[colorCodes[index]],
              child: Center(child: Text('Entry ${entries[index]}')),
            );
          },
          separatorBuilder: (BuildContext context, int index) => const Divider(),
        ),

      ),
    );
  }
}