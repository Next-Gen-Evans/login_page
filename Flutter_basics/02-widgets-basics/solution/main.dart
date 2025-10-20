import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widget Basics',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: WidgetBasicsHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class WidgetBasicsHome extends StatelessWidget {
  const WidgetBasicsHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Flutter Widget Basics',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            // Section 1: Text Widgets
            _buildSectionTitle('📝 Text Widgets'),
            _buildTextExamples(),
            
            const SizedBox(height: 30),
            
            // Section 2: Container Widgets
            _buildSectionTitle('📦 Container Widgets'),
            _buildContainerExamples(),
            
            const SizedBox(height: 30),
            
            // Section 3: Icon Widgets
            _buildSectionTitle('🎨 Icon Widgets'),
            _buildIconExamples(),
            
            const SizedBox(height: 30),
            
            // Section 4: Image Widgets
            _buildSectionTitle('🖼️ Image Widgets'),
            _buildImageExamples(),
            
            const SizedBox(height: 30),
            
            // Section 5: Button Widgets
            _buildSectionTitle('🔘 Button Widgets'),
            _buildButtonExamples(),
            
            const SizedBox(height: 30),
            
            // Section 6: Layout Widgets
            _buildSectionTitle('📐 Layout Widgets'),
            _buildLayoutExamples(),
            
          ],
        ),
      ),
    );
  }
  
  // Helper method to create section titles
  Widget _buildSectionTitle(String title) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.teal.shade100, Colors.teal.shade50],
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.teal.shade800,
        ),
      ),
    );
  }
  
  // Text Widget Examples
  Widget _buildTextExamples() {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Basic Text
            const Text('This is basic text'),
            
            const SizedBox(height: 10),
            
            // Styled Text
            const Text(
              'This is styled text!',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.teal,
              ),
            ),
            
            const SizedBox(height: 10),
            
            // Colored Background Text
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.amber.shade100,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                'Text with background color',
                style: TextStyle(color: Colors.amber.shade800),
              ),
            ),
            
            const SizedBox(height: 10),
            
            // Multiline Text
            const Text(
              'This is a longer text that demonstrates how Flutter handles multiline text automatically when it runs out of space.',
              style: TextStyle(
                fontSize: 14,
                height: 1.5, // Line spacing
              ),
            ),
          ],
        ),
      ),
    );
  }
  
  // Container Widget Examples
  Widget _buildContainerExamples() {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Simple colored container
                Container(
                  width: 80,
                  height: 80,
                  color: Colors.red.shade300,
                  child: const Center(
                    child: Text(
                      'Red',
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                
                // Rounded container
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.blue.shade300,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Center(
                    child: Text(
                      'Rounded',
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                
                // Circular container
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.green.shade300,
                    shape: BoxShape.circle,
                  ),
                  child: const Center(
                    child: Text(
                      'Circle',
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
            
            const SizedBox(height: 20),
            
            // Gradient container
            Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Colors.purple, Colors.pink],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Center(
                child: Text(
                  'Gradient Container',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  
  // Icon Widget Examples
  Widget _buildIconExamples() {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Row of basic icons
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.home, size: 40, color: Colors.blue),
                Icon(Icons.favorite, size: 40, color: Colors.red),
                Icon(Icons.star, size: 40, color: Colors.amber),
                Icon(Icons.person, size: 40, color: Colors.green),
              ],
            ),
            
            const SizedBox(height: 20),
            
            // Icons with containers
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildIconContainer(Icons.email, Colors.blue, 'Email'),
                _buildIconContainer(Icons.phone, Colors.green, 'Phone'),
                _buildIconContainer(Icons.location_on, Colors.red, 'Location'),
                _buildIconContainer(Icons.camera, Colors.purple, 'Camera'),
              ],
            ),
          ],
        ),
      ),
    );
  }
  
  // Helper method for icon containers
  Widget _buildIconContainer(IconData icon, Color color, String label) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: color.withOpacity(0.1),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Icon(icon, size: 30, color: color),
        ),
        const SizedBox(height: 8),
        Text(
          label,
          style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
  
  // Image Widget Examples
  Widget _buildImageExamples() {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text(
              'Image placeholders (use actual images in real apps)',
              style: TextStyle(
                fontSize: 14,
                fontStyle: FontStyle.italic,
                color: Colors.grey.shade600,
              ),
            ),
            
            const SizedBox(height: 15),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Placeholder image containers
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(
                    Icons.image,
                    size: 40,
                    color: Colors.grey.shade600,
                  ),
                ),
                
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.person,
                    size: 40,
                    color: Colors.grey.shade600,
                  ),
                ),
                
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(
                    Icons.photo_camera,
                    size: 40,
                    color: Colors.grey.shade600,
                  ),
                ),
              ],
            ),
            
            const SizedBox(height: 10),
            
            Text(
              'Square Image    Circle Avatar    Camera Photo',
              style: TextStyle(fontSize: 12, color: Colors.grey.shade600),
            ),
          ],
        ),
      ),
    );
  }
  
  // Button Widget Examples
  Widget _buildButtonExamples() {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Elevated Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    print('Elevated button pressed!');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                  ),
                  child: Text('Elevated'),
                ),
                
                ElevatedButton.icon(
                  onPressed: () {
                    print('Icon button pressed!');
                  },
                  icon: const Icon(Icons.favorite),
                  label: const Text('With Icon'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,
                  ),
                ),
              ],
            ),
            
            const SizedBox(height: 15),
            
            // Text Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () {
                    print('Text button pressed!');
                  },
                  child: const Text('Text Button'),
                ),
                
                OutlinedButton(
                  onPressed: () {
                    print('Outlined button pressed!');
                  },
                  child: const Text('Outlined'),
                ),
              ],
            ),
            
            const SizedBox(height: 15),
            
            // Floating Action Button
            FloatingActionButton(
              onPressed: () {
                print('FAB pressed!');
              },
              backgroundColor: Colors.teal,
              child: Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
  
  // Layout Widget Examples
  Widget _buildLayoutExamples() {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Row Layout (Horizontal):',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            
            const SizedBox(height: 10),
            
            // Row example
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade400),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.red.shade300,
                    child: const Center(child: Text('1')),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.green.shade300,
                    child: const Center(child: Text('2')),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.blue.shade300,
                    child: const Center(child: Text('3')),
                  ),
                ],
              ),
            ),
            
            const SizedBox(height: 20),
            
            const Text(
              'Column Layout (Vertical):',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            
            const SizedBox(height: 10),
            
            // Column example
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade400),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                        width: 60,
                        height: 40,
                        color: Colors.orange.shade300,
                        child: const Center(child: Text('A')),
                      ),
                      const SizedBox(height: 5),
                      Container(
                        width: 60,
                        height: 40,
                        color: Colors.purple.shade300,
                        child: const Center(child: Text('B')),
                      ),
                      const SizedBox(height: 5),
                      Container(
                        width: 60,
                        height: 40,
                        color: Colors.teal.shade300,
                        child: const Center(child: Text('C')),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}