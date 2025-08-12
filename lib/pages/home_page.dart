import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Center(
            child: Text(
              "Ini HomePage",
              style: TextStyle(
                fontSize: 22.0
              ),
            ),
          ),
          SizedBox(height: 15.0),
          Center(
            child: ElevatedButton(
                onPressed: () {},
                child: Text('Ke Kalkulator')),
          ),
          SizedBox(height: 15.0),
          Center(
            child: ElevatedButton(
                onPressed: () {},
                child: Text('Ke Football Palyers List')),
          )
        ],
      ),
    );
  }
}
