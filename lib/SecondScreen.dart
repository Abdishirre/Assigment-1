import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key, this.name}) : super(key: key);
  final String? name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SECOND SCREEN"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Image.asset('assets/WhatsApp Image 2022-10-28 at 10.21.24 AM.jpeg'),
          Text(
            'Abdikhaliq mohamed Adan.',
            style: TextStyle(fontSize: 20.0),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text("Back"),
          )
        ],
      ),
    );
  }
}
