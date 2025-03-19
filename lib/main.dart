import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          titleSpacing: 0,
          title: const Text("Student Portfolio"),
          backgroundColor: const Color(0xFF1C00BA),
          titleTextStyle: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),  
          leading: const Icon(
            Icons.menu,
            color: Colors.white,
            size: 32,
          ),
        ),
        body: SafeArea(
          child: ListView(
            padding: const EdgeInsets.all(20),
            children: [
              Container(
                padding: const EdgeInsets.only(bottom: 10),
                child: CircleAvatar(
                  radius: 200.0,
                  // borderRadius: BorderRadius.circular(40.0),
                  backgroundImage: AssetImage("assets/MyPic.jpg"),
                ),
              ),
              // const SizedBox(height: 10),
              const Text(
                "Welcome to my Portfolio",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.center,
              ),
              const Text(
                "Hi I'm",
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const Text(
                "Ung Chhoungseang",
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.w900,
                  color: Color(0xFF1C00BA),
                ),
                textAlign: TextAlign.center,
              ),
              const Text(
                "Product Designer",
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 15),
              const Text(
                "Collaborating with highly skilled individuals, our agency delivers top-quality services.",
                style: TextStyle(
                  fontSize: 20,
                ), 
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 25),
              FilledButton(
                onPressed: (){}, 
                style: FilledButton.styleFrom(
                  backgroundColor: Color(0xFF1C00BA),
                  minimumSize: Size(150, 60), // width: 150, height: 60
                ),
                child: Text(
                  "Hire Me", 
                  style: TextStyle(
                    fontWeight: FontWeight.bold, 
                    color: Colors.white,
                    fontSize: 18
                  )
                ),
              ),
              const SizedBox(height: 10),
              OutlinedButton.icon(
                onPressed: (){},
                style: OutlinedButton.styleFrom(
                  minimumSize: Size(180, 60), // Adjust height and width
                ),
                icon: Icon(Icons.download, color: Color(0xFF1C00BA)), 
                label: Text(
                  "Download CV",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF1C00BA),
                    fontSize: 18
                  )
                )
              )
            ],  
          ),
        ),
      ),
    );
  }
}