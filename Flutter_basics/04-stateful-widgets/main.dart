import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(StatefulMagicApp());
}

class StatefulMagicApp extends StatelessWidget {
  const StatefulMagicApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stateful Magic 🎭',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        fontFamily: 'Roboto',
      ),
      home: InteractivePlayground(),
    );
  }
}

class InteractivePlayground extends StatefulWidget {
  const InteractivePlayground({super.key});

  @override
  _InteractivePlaygroundState createState() => _InteractivePlaygroundState();
}

class _InteractivePlaygroundState extends State<InteractivePlayground> {
  // 🎯 State variables - These hold our app's memory!
  int _counter = 0;
  String _currentEmoji = '😊';
  Color _backgroundColor = Colors.blue.shade100;
  bool _isLightOn = false;
  double _sliderValue = 0.0;
  
  // List of fun emojis to cycle through
  final List<String> _emojis = ['😊', '🎉', '🚀', '⭐', '🎨', '🎪', '🔥', '💎'];
  final List<Color> _colors = [
    Colors.blue.shade100,
    Colors.pink.shade100, 
    Colors.green.shade100,
    Colors.orange.shade100,
    Colors.purple.shade100,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('🎭 Interactive Magic'),
        backgroundColor: Colors.indigo,
        elevation: 0,
      ),
      backgroundColor: _backgroundColor,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Welcome Header
            _buildWelcomeCard(),
            const SizedBox(height: 20),
            
            // Counter Section
            _buildCounterSection(),
            const SizedBox(height: 20),
            
            // Emoji Changer Section
            _buildEmojiSection(),
            const SizedBox(height: 20),
            
            // Light Switch Section
            _buildLightSection(),
            const SizedBox(height: 20),
            
            // Slider Fun Section
            _buildSliderSection(),
            const SizedBox(height: 20),
            
            // Color Changer Section
            _buildColorSection(),
          ],
        ),
      ),
    );
  }

  Widget _buildWelcomeCard() {
    return Card(
      elevation: 8,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.indigo.shade300, Colors.purple.shade300],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: const Column(
          children: [
            Text(
              '✨ Welcome to Stateful Widgets! ✨',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 8),
            Text(
              'Tap, slide, and interact with everything!',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white70,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCounterSection() {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Text(
              '🔢 Tap Counter',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Text(
              'You tapped: $_counter times!',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: _decrementCounter,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red.shade300,
                  ),
                  child: Text('👎 -1'),
                ),
                ElevatedButton(
                  onPressed: _incrementCounter,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green.shade300,
                  ),
                  child: Text('👍 +1'),
                ),
                ElevatedButton(
                  onPressed: _resetCounter,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue.shade300,
                  ),
                  child: Text('🔄 Reset'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildEmojiSection() {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Text(
              '🎭 Emoji Changer',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                color: Colors.yellow.shade100,
                shape: BoxShape.circle,
                border: Border.all(color: Colors.orange, width: 3),
              ),
              child: Center(
                child: Text(
                  _currentEmoji,
                  style: const TextStyle(fontSize: 60),
                ),
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: _changeEmoji,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange.shade300,
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              ),
              child: Text('🎲 Change Emoji'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLightSection() {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Text(
              '💡 Light Switch',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: _isLightOn ? Colors.yellow.shade300 : Colors.grey.shade400,
                shape: BoxShape.circle,
                boxShadow: _isLightOn ? [
                  BoxShadow(
                    color: Colors.yellow.withOpacity(0.6),
                    blurRadius: 20,
                    spreadRadius: 5,
                  ),
                ] : null,
              ),
              child: const Center(
                child: Text(
                  '💡',
                  style: TextStyle(fontSize: 40),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Text(
              _isLightOn ? 'Light is ON! ✨' : 'Light is OFF 🌙',
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 12),
            Switch(
              value: _isLightOn,
              onChanged: _toggleLight,
              activeColor: Colors.yellow,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSliderSection() {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Text(
              '🎚️ Magic Slider',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                color: Colors.purple.shade200,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: Text(
                  '🔮',
                  style: TextStyle(fontSize: 40 + _sliderValue),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Magic Level: ${_sliderValue.toInt()}',
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            Slider(
              value: _sliderValue,
              min: 0,
              max: 50,
              divisions: 10,
              onChanged: _updateSlider,
              activeColor: Colors.purple,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildColorSection() {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Text(
              '🌈 Background Color',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            const Text(
              'Tap a color to change the background!',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: _colors.map((color) {
                return GestureDetector(
                  onTap: () => _changeBackgroundColor(color),
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: color,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: _backgroundColor == color ? Colors.black : Colors.grey,
                        width: _backgroundColor == color ? 3 : 1,
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }

  // 🔥 State-changing methods - This is where the magic happens!
  
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter = _counter > 0 ? _counter - 1 : 0;
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  void _changeEmoji() {
    setState(() {
      final random = Random();
      _currentEmoji = _emojis[random.nextInt(_emojis.length)];
    });
  }

  void _toggleLight(bool value) {
    setState(() {
      _isLightOn = value;
    });
  }

  void _updateSlider(double value) {
    setState(() {
      _sliderValue = value;
    });
  }

  void _changeBackgroundColor(Color color) {
    setState(() {
      _backgroundColor = color;
    });
  }
}