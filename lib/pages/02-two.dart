import 'package:flutter/material.dart';

class Two extends StatefulWidget {
  const Two({Key? key}) : super(key: key);

  @override
  TwoState createState() => TwoState();
}

class TwoState extends State<Two> {
  @override
  bool usa = false;
  bool eg = false;
  Color colorgray=Colors.grey;
  Color colorping=Colors.pink;
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Title'),
        ),
        body: Column(
          children: [
            Checkbox(
              onChanged: (value) {
                setState(() {
                  usa = !usa;
                });
                print(usa);
              },
              value: usa,
            ),
            CheckboxListTile(
                title: Icon(
                  Icons.favorite,
                  color: colorgray,
                ),
                value: eg,
                onChanged: (val) {
                  setState(() {
                    eg = !eg;
                    eg?colorgray= Colors.pink:colorgray=Colors.grey;
                  });
                })
          ],
        ));
  }
}
