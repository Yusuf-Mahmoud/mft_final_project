import 'package:flutter/material.dart';
import 'package:mft_final_project/homescreen.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/WhatsApp Image 2024-03-08 at 23.23.18_da1fd16b.jpg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Container(
            width: 300,
            padding: EdgeInsets.all(20.0),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter Your Username';
                      }
                      return null;
                    },
                    controller: _usernameController,
                    decoration: InputDecoration(
                      labelText: 'Username',
                    ),
                  ),
                  SizedBox(height: 16),
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter Your Password';
                      }
                      return null;
                    },
                    controller: _passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Password',
                    ),
                  ),
                  SizedBox(height: 32),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => HomeScreen()),
                        );
                      }
                    },
                    child: Text('Login'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
