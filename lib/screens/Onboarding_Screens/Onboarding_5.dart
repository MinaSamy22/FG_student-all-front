import 'package:flutter/material.dart';
import '../Auth/login_screen.dart';

class Onboarding_5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [

          Positioned.fill(
            child: Image.asset(
              'assets/images/background.jpeg',
              fit: BoxFit.cover,
            ),
          ),

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(flex: 3),

              Image.asset(
                'assets/images/onboarding5.jpg',
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width * 0.8,
              ),

              SizedBox(height: 20),

              Text(
                "Welcome to",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              Text(
                "Future Gate Application",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),

              SizedBox(height: 10),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  "Finally, submit your internship application through our platform, and take the first step toward launching your career with us.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.blueAccent,
                  ),
                ),
              ),

              SizedBox(height: 20),

              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF196AB3),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 85, vertical: 15),
                ),
                child: Text(
                  "Launch",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),

              Spacer(flex: 3),
            ],
          ),
        ],
      ),
    );
  }
}
