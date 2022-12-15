import 'package:al_1/ui/lists/user.dart';
import 'package:al_1/ui/lists/user_item.dart';
import 'package:flutter/material.dart';

class Lists extends StatelessWidget {
  const Lists({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final users = List.generate(1000, (index) {
      return User(
        firstName: 'FirstName $index',
        lastName: 'LastName $index',
      );
    });

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView.separated(
                itemCount: users.length,
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    height: 20,
                  );
                },
                itemBuilder: (BuildContext context, int index) {
                  final user = users[index];
                  // if (index % 2 == 0) {
                  //   return Container(
                  //     height: 100,
                  //     color: Colors.red,
                  //   );
                  // }
                  return UserItem(user: user);
                },
              ),
            ),
            Container(
              height: 100,
              color: Colors.amber,
            ),
          ],
        ),
      ),
    );
  }
}
