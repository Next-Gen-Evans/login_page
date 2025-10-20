import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My First Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My First Flutter App',
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.purple,
        centerTitle: true,
        elevation: 8,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.purple.shade100, Colors.white],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Main greeting
              Text(
                'Hello, Flutter!',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple.shade800,
                ),
              ),
              
              const SizedBox(height: 20),
              
              // Subtitle
              Text(
                'Welcome to your first Flutter app!',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.purple.shade600,
                ),
                textAlign: TextAlign.center,
              ),
              
              const SizedBox(height: 40),
              
              // Icon
              Icon(
                Icons.flutter_dash,
                size: 100,
                color: Colors.purple.shade400,
              ),
              
              const SizedBox(height: 20),
              
              // Fun fact
              Container(
                padding: const EdgeInsets.all(16),
                margin: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.purple.shade50,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.purple.shade200),
                ),
                child: Text(
                  '🎉 Fun Fact: Flutter can build apps for iOS, Android, Web, and Desktop from a single codebase!',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.purple.shade700,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // We'll learn about this in later lessons!
          print('Hello from Flutter!');
        },
        backgroundColor: Colors.purple,
        child: Icon(Icons.thumb_up),
      ),
    );
  }
}