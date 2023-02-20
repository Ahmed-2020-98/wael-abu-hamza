import 'package:flutter/material.dart';

class One extends StatefulWidget {
  const One({Key? key}) : super(key: key);

  @override
  State<One> createState() => _OneState();
}

class _OneState extends State<One> {
  @override
  var text = "hello flutter";
  bool isAhmed = false;
  var selectedCountry;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '$text',
                style: TextStyle(fontSize: 33),
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      isAhmed = !isAhmed;
                      isAhmed ? text = 'Ahmed Gamal' : text = 'Hello World';
                    });
                  },
                  child: Text('Push')),
              DropdownButton(
                hint: Text('Choose a country'),
                  items: ['UAE', 'EG', 'Saudi', 'SY']
                      .map((e) => DropdownMenuItem(child: Text('$e'),value: e,)).toList(),
                  onChanged: (val){
                    setState(() {
                      selectedCountry=val!;
                    });
                  },
                  value: selectedCountry,
                  
                  )
            ],
          ),
        ],
      ),
    );
  }
}
