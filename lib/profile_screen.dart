import 'package:flutter/material.dart';
import 'auth_service.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final AuthService _authService = AuthService();

    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () async {
              await _authService.signOut();
              Navigator.popUntil(context, (route) => route.isFirst);
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Email: ${_authService.currentUser?.email ?? ''}'),
            ElevatedButton(
              onPressed: () {
                // Code to change password
              },
              child: Text('Change Password'),
            ),
          ],
        ),
      ),
    );
  }
}
