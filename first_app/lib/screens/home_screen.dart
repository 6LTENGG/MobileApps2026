import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Text(
                'Welcome to Home Screen',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ),

            Icon(Icons.home, size: 50, color: Colors.green),

            Image.network(
              'https://images.unsplash.com/photo-1609505848912-b7c3b8b4beda?q=80&w=765&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
              width: 200,
              height: 200,
            ),

            SizedBox(height: 20),
            Container(
              width: 100,
              height: 100,
              color: Colors.red,
              child: Center(child: Text('Hi')),
            ),

            SizedBox(height: 20),
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                'https://images.unsplash.com/photo-1609505848912-b7c3b8b4beda?q=80&w=765&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
              ),
            ),

            SizedBox(height: 20),
            Stack(
              children: [
                CircleAvatar(
                  radius: 55,
                  backgroundColor: Colors.blue,
                  child: CircleAvatar(
                    radius:50,
                    backgroundImage: NetworkImage(
                      'https://images.unsplash.com/photo-1609505848912-b7c3b8b4beda?q=80&w=765&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                    ),
                  ),
                ),

                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Icon(Icons.check_circle, size: 20, color: Colors.green),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
