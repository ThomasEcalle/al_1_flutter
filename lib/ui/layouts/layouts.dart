import 'package:al_1/ui/layouts/red_circle.dart';
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
            child: Stack(
              children: [
                LayoutBuilder(
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
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 10,
                            ),
                            child: Wrap(
                              spacing: 10,
                              runSpacing: 10,
                              direction: Axis.horizontal,
                              children: List.generate(22, (index) {
                                return const RedCircle();
                              }),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
                Positioned.fill(
                  child: Center(
                    child: Container(
                      color: Colors.pink.withOpacity(.3),
                      height: 100,
                      width: 100,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: screenHeight * .5,
            width: double.infinity,
            color: Colors.orangeAccent,
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    height: double.infinity,
                    color: Colors.green,
                    child: Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: RedCircle(),
                        ),
                        RedCircle(),
                        Spacer(),
                        RedCircle(),
                      ],
                    ),
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
