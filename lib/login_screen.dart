// import 'package:flutter/material.dart';
// import 'auth_service.dart';
// import 'profile_screen.dart';

// class LoginScreen extends StatefulWidget {
//   @override
//   _LoginScreenState createState() => _LoginScreenState();
// }

// class _LoginScreenState extends State<LoginScreen> {
//   final TextEditingController _emailController = TextEditingController();
//   final TextEditingController _passwordController = TextEditingController();

//   void _login() async {
//     AuthService authService = AuthService();
//     var user = await authService.signInWithEmailAndPassword(
//       _emailController.text,
//       _passwordController.text,
//     );

//     if (user != null) {
//       Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ProfileScreen()));
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Login')),
//       body: Column(
//         children: [
//           TextField(controller: _emailController, decoration: InputDecoration(labelText: 'Email')),
//           TextField(controller: _passwordController, decoration: InputDecoration(labelText: 'Password'), obscureText: true),
//           ElevatedButton(onPressed: _login, child: Text('Login')),
//         ],
//       ),
//     );
//   }
// }



import 'package:flutter/material.dart';
import 'auth_service.dart';
import 'profile_screen.dart';
import 'register_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _login() async {
    AuthService authService = AuthService();
    var user = await authService.signInWithEmailAndPassword(
      _emailController.text,
      _passwordController.text,
    );

    if (user != null) {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ProfileScreen()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login")),
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
              onPressed: _login,
              child: Text("Login"),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegisterScreen()),
                );
              },
              child: Text("Don't have an account? Register here"),
            ),
          ],
        ),
      ),
    );
  }
}
