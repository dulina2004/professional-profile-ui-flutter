import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '@Dulina',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: Color(0xFF282c33),
      ),
      home: PortfolioPage(),
    );
  }
}

class PortfolioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('@Dulina'),
        backgroundColor: Color(0xFF2c3036),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildHomeSection(),
              SizedBox(height: 32.0),
              _buildTechStackSection(),
              SizedBox(height: 32.0),
              _buildContactSection(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHomeSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'I am a\nFull Stack Developer',
          style: TextStyle(
            fontSize: 36.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 16.0),
        Text(
          'Hi, I\'m Dulina, a web developer passionate about creating dynamic, interactive, and visually stunning websites...',
          style: TextStyle(fontSize: 16.0, color: Colors.grey[400]),
        ),
        SizedBox(height: 16.0),
        Image.asset("assets/h.png", width: double.infinity),
      ],
    );
  }

  Widget _buildTechStackSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '#Tech Stack',
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 16.0),
        GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, // Number of columns
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
          ),
          itemCount: techStack.length,
          itemBuilder: (context, index) {
            return _buildTechStackCard(
              techStack[index]['name']!,
              techStack[index]['logoPath']!,
            );
          },
        ),
      ],
    );
  }

  Widget _buildTechStackCard(String tech, String logoPath) {
    return Card(
      color: Color(0xFF2C3036),
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(logoPath, width: 40.0, height: 40.0),
            SizedBox(height: 8.0),
            Text(
              tech,
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContactSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '#Contact',
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 16.0),
        Text(
          'Email: dulinagunasinghe@gmail.com',
          style: TextStyle(color: Colors.grey[400]),
        ),
        SizedBox(height: 8.0),
        Text(
          'Location: Mathugama, Sri Lanka',
          style: TextStyle(color: Colors.grey[400]),
        ),
        SizedBox(height: 16.0),
        Row(
          children: [
            IconButton(
              icon: Icon(Icons.link, color: Colors.white),
              onPressed: () {
                // Open GitHub profile
              },
            ),
            IconButton(
              icon: Icon(Icons.linked_camera, color: Colors.white),
              onPressed: () {
                // Open LinkedIn profile
              },
            ),
          ],
        ),
        SizedBox(height: 16.0),
        Center(
          child: Text(
            '© 2024 Dulina. All rights reserved.',
            style: TextStyle(color: Colors.grey[400]),
          ),
        ),
      ],
    );
  }
}

// Sample tech stack data
List<Map<String, String>> techStack = [
  {'name': 'Flutter', 'logoPath': 'assets/flutter_logo.png'},
  {'name': 'Angular', 'logoPath': 'assets/angular_logo.png'},
  {'name': 'Spring Boot', 'logoPath': 'assets/spring_boot_logo.png'},
  {'name': 'MySQL', 'logoPath': 'assets/mysql_logo.png'},
  {'name': 'Tailwind CSS', 'logoPath': 'assets/tailwind_logo.png'},
  {'name': 'JavaScript', 'logoPath': 'assets/javascript_logo.png'},
];
