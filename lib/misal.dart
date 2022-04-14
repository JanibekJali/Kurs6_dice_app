import 'package:flutter/material.dart';

class Misal extends StatelessWidget {
  const Misal({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              // flex: 2,
              child: Container(
                // height: 100.0,
                color: Colors.red,
              ),
            ),
            const SizedBox(height: 45.0),
            Expanded(
              child: Container(
                // height: 100.0,
                color: Colors.green,
              ),
            ),
            const SizedBox(
              height: 45.0,
            ),
            Expanded(
              // flex: 2,
              child: Container(
                // height: 200.0,
                color: Colors.yellow,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
