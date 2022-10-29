import 'package:flutter/material.dart';
import 'package:assigment/SecondScreen.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  String value = "mogadishu";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen One"),
        centerTitle: true,
        actions: [
          PopupMenuButton(
            itemBuilder: (context) => [
              const PopupMenuItem(
                value: "mogadishu",
                child: Text("Mogadishu"),
              ),
              const PopupMenuItem(
                value: "hargaisa",
                child: Text("Hargaisa"),
              ),
              const PopupMenuItem(
                value: "garoowe",
                child: Text("Garoowe"),
              )
            ],
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            Image.asset('assets/WhatsApp Image 2022-10-28 at 10.21.24 AM.jpeg'),
        Text(
                'Abdikhaliq mohamed Adan.',
                style: TextStyle(fontSize: 20.0),
              ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) =>   SecondScreen(

                              ))));
                },
                child: const Text("Go Second Screen"))
          ],
        ),
      ),
    );
  }
}