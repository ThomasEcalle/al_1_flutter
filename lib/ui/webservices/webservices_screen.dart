import 'package:al_1/ui/webservices/user.dart';
import 'package:al_1/ui/webservices/webservices.dart';
import 'package:flutter/material.dart';

class WebservicesScreen extends StatefulWidget {
  const WebservicesScreen({Key? key}) : super(key: key);

  @override
  State<WebservicesScreen> createState() => _WebservicesScreenState();
}

class _WebservicesScreenState extends State<WebservicesScreen> {
  bool _isLoading = false;
  Exception? _exception;
  List<User> _users = [];

  @override
  void initState() {
    super.initState();
    _init();
  }

  void _init() async {
    setState(() {
      _isLoading = true;
    });
    try {
      final users = await WebServices.retrieveUsers();
      setState(() {
        _isLoading = false;
        _users = users;
      });
    } catch (error) {
      setState(() {
        _exception = error as Exception;
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    if (_isLoading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    if (_exception != null) {
      return Center(
        child: Text(_exception.toString()),
      );
    }

    if (_users.isEmpty) {
      return const Center(
        child: Text('No users'),
      );
    }

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
}
