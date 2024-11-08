// import 'package:flutter/material.dart';
// import 'auth_service.dart';

// class RegisterScreen extends StatefulWidget {
//   @override
//   _RegisterScreenState createState() => _RegisterScreenState();
// }

// class _RegisterScreenState extends State<RegisterScreen> {
//   final TextEditingController _emailController = TextEditingController();
//   final TextEditingController _passwordController = TextEditingController();

//   void _register() async {
//     AuthService authService = AuthService();
//     await authService.registerWithEmailAndPassword(
//       _emailController.text,
//       _passwordController.text,
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Register')),
//       body: Column(
//         children: [
//           TextField(controller: _emailController, decoration: InputDecoration(labelText: 'Email')),
//           TextField(controller: _passwordController, decoration: InputDecoration(labelText: 'Password'), obscureText: true),
//           ElevatedButton(onPressed: _register, child: Text('Register')),
//         ],
//       ),
//     );
//   }
// }



import 'package:flutter/material.dart';
import 'auth_service.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _register() async {
    AuthService authService = AuthService();
    var user = await authService.registerWithEmailAndPassword(
      _emailController.text,
      _passwordController.text,
    );

    if (user != null) {
      Navigator.pop(context); // Go back to login screen after registration
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Register")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _emailController,
              decoration: InputDecoration(labelText: "Email"),
            ),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(labelText: "Password"),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _register,
              child: Text("Register"),
            ),
          ],
        ),
      ),
    );
  }
}
