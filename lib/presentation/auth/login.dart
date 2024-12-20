import 'package:flutter/material.dart';
import 'package:learning_app/presentation/homescreen/home.dart';
import 'package:learning_app/presentation/auth/register.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade300,
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20.0), // Add padding around the form
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 4,
                  blurRadius: 12,
                  offset: Offset(0, 6),
                ),
              ],
            ),
            padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 36.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Profile Icon
                CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('assets/images/e-learning.png'),
                  backgroundColor: Colors.transparent,
                ),
                SizedBox(height: 10),

                // Welcome Text
                Text(
                  'Welcome to NakIT',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue.shade700,
                  ),
                ),
                SizedBox(height: 45),

                // Email TextField
                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    labelText: 'Email',
                    labelStyle: TextStyle(color: Colors.grey.shade700),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                SizedBox(height: 16),

                // Password TextField
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    labelText: 'Password',
                    labelStyle: TextStyle(color: Colors.grey.shade700),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    suffixIcon: Icon(Icons.visibility_off),
                  ),
                ),
                SizedBox(height: 12),

                // Forgot Password
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Forgot password?',
                      style: TextStyle(color: Colors.blue.shade600),
                    ),
                  ),
                ),
                SizedBox(height: 16),

                // Login Button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue.shade600,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: EdgeInsets.symmetric(vertical: 16),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => HomeScreen()),
                      );
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 24),

                OutlinedButton.icon(
                  onPressed: () {},
                  icon: Image.asset(
                    'assets/images/google-icon.png',
                    height: 24,
                  ),
                  label: Text(
                    'Sign in with Google',
                    style: TextStyle(color: Colors.black),
                  ),
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(color: Colors.black12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 14, horizontal: 85),
                  ),
                ),
                SizedBox(height: 24),

                // Register Account
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: TextStyle(color: Colors.grey.shade700),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => SignupScreen(),
                          ),
                        );
                      },
                      child: Text(
                        'Register',
                        style: TextStyle(color: Colors.blue.shade600),
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
