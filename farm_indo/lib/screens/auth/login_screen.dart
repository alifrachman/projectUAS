import 'package:farm_indo/screens/auth/register_screen.dart';
import 'package:farm_indo/screens/main/home/home_screen.dart';
import 'package:farm_indo/screens/main/main_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[800],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.grey[100],
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 30),
                TextFormField(
                  decoration: new InputDecoration(
                    labelText: 'Email',
                      labelStyle: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 15,
                      ),
                    filled: true,
                    fillColor: Colors.white, 
                    prefixIcon: Icon(
                      Icons.person,
                      size: 22,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(25.0)
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                TextField(
                  decoration: new InputDecoration(
                    labelText: 'Password',
                      labelStyle: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 15,
                      ),
                    filled: true,
                    fillColor: Colors.white, 
                    prefixIcon: Icon(
                      Icons.lock,
                      size: 20,
                      ),
                        border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(25.0),
                    ),
                  ),
                  obscureText: true,
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (ctx) => const RegisterScreen(),
                          ),
                        );
                      },
                      child: Text(
                        'Register',
                        style: TextStyle(
                          color: Colors.grey[100],
                          fontSize: 16,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ),
                        ),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (ctx) => const MainScreen(),
                          ),
                        );
                      },
                      child: const Text(
                        'Submit',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
