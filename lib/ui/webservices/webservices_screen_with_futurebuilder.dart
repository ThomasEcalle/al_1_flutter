import 'package:al_1/ui/webservices/user.dart';
import 'package:al_1/ui/webservices/webservices.dart';
import 'package:flutter/material.dart';

class WebservicesScreenWithFutureBuilder extends StatelessWidget {
  const WebservicesScreenWithFutureBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: FutureBuilder(
        future: WebServices.retrieveUsers(),
        builder: (BuildContext context, AsyncSnapshot<List<User>> snapshot) {
          if (snapshot.hasData) {
            final _users = snapshot.data;
            if (_users == null || _users.isEmpty) return const Center(child: Text('No data'));

            return ListView.builder(
              itemCount: _users.length,
              itemBuilder: (context, index) {
                final user = _users[index];
                return ListTile(
                  title: Text(user.firstName),
                  subtitle: Text(user.lastName),
                );
              },
            );
          }

          if (snapshot.hasError) {
            return Center(child: Text('${snapshot.error}'));
          }

          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
