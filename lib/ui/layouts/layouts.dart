import 'package:flutter/material.dart';

class Layouts extends StatelessWidget {
  const Layouts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            height: screenHeight * .5,
            width: double.infinity,
            color: Colors.blue,
            child: LayoutBuilder(
              builder: (context, constraints) {
                final maxHeight = constraints.maxHeight;
                return Column(
                  children: [
                    Container(
                      height: maxHeight * .5,
                      width: double.infinity,
                      color: Colors.blue,
                    ),
                    Container(
                      height: maxHeight * .5,
                      width: double.infinity,
                      color: Colors.pink,
                    ),
                  ],
                );
              },
            ),
          ),
          Container(
            height: screenHeight * .5,
            width: double.infinity,
            color: Colors.orangeAccent,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: double.infinity,
                    color: Colors.green,
                  ),
                ),
                Expanded(
                  child: Container(
                    height: double.infinity,
                    color: Colors.yellow,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class RedSquare extends StatelessWidget {
  const RedSquare({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 80,
      color: Colors.red,
    );
  }
}
