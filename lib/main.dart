import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String emailText = "";
  String passwordText = "";
  String errorMessage = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              onChanged: (value) {
                emailText = value;
              },
              decoration: const InputDecoration(
                hintText: 'Enter Email',
                labelText: 'Email',
              ),
            ),
            const SizedBox(height: 20.0),
            TextField(
              obscureText: true,
              onChanged: (value) {
                passwordText = value;
              },
              decoration: const InputDecoration(
                hintText: 'Enter Password',
                labelText: 'Password',
              ),
            ),
            const SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text('Forgot Password?'),
                ),
              ],
            ),
            Text(
              errorMessage,
              style: const TextStyle(color: Colors.red, fontSize: 14.0),
            ),
            const SizedBox(height: 20.0),
            Container(
              width: 150,
              height: 45,
              color: Colors.blue,
              child: TextButton(
                onPressed: () {
                  if (emailText == "") {
                    setState(() {
                      errorMessage = "Email cannot be empty!";
                    });
                  } else if (!emailText.contains("@")) {
                    setState(() {
                      errorMessage = "Email must contain @ symbol!";
                    });
                  } else if (passwordText == "") {
                    setState(() {
                      errorMessage = "Password cannot be empty!";
                    });
                  } else {
                    setState(() {
                      errorMessage = "";
                    });
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomeScreen(),
                      ),
                    );
                  }
                },
                child: const Text(
                  'Login',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        backgroundColor: Colors.blue,
      ),
      body: const Center(
        child: Text(
          'Welcome to Home Screen!',
          style: TextStyle(fontSize: 20.0),
        ),
      ),
    );
  }
}