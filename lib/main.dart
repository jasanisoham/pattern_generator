import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Homepage()
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  double sliderValue = 1;
  List wrapValues= [];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(sliderValue.toInt(), (idx) => Column(
              children: List.generate(5, (index) => Container(
                alignment: Alignment.center,
                height: 40,
                width: 40,
                child: Text((idx<=index)?(idx+1).toString():"", style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black),),
              )),
            )).toList(),
          ),
          Slider(
            max: 5,
            min: 1,
            value: sliderValue,
            onChanged: (val){
              setState(() {
                sliderValue = val;
              });
            },
          ),
        ],
      ),
    );
  }
}