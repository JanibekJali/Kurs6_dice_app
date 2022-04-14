import 'package:flutter/material.dart';
import 'dart:math';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int solJak = 2;
  int onJak = 6;

  void baskandaOzgort() {
    Random random = Random();
    solJak = random.nextInt(6) + 1; // 0 - 5
    onJak = random.nextInt(6) + 1;

    setState(() {});
    print(' random.solJak ===> $solJak');
    print(' random.onJak ===> $onJak');
    // solJak == 0 +1 =1
    // 1+1=2
    // 2+1 = 3
    // 5+1 = 6
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFF5353),
      appBar: AppBar(
        backgroundColor: const Color(0xffFF5353),
        title: Text(
          'ТапШырМа-05'.toUpperCase(),
          style: const TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: InkWell(
                    onTap: baskandaOzgort,
                    child: Image.asset('assets/images/dice$solJak.png')),
              ),
              const SizedBox(
                width: 15.0,
              ),
              Expanded(
                child: InkWell(
                    onTap: baskandaOzgort,
                    // () {
                    // onJak = 1;
                    // setState(() {});
                    //   print('GestureDetector ====> $GestureDetector');
                    // },
                    child: Image.asset('assets/images/dice$onJak.png')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// UI - User Interface
// UX - User experience
