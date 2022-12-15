import 'package:al_1/ui/lists/user.dart';
import 'package:flutter/material.dart';

class UserItem extends StatelessWidget {
  final User user;

  const UserItem({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('Building user ${user.firstName}');
    return GestureDetector(
      onTap: () {
        print('coucou');
      },
      child: ListTile(
        title: Text(user.firstName),
        subtitle: Text(user.lastName),
        leading: const Icon(Icons.people),
      ),
    );
  }
}
