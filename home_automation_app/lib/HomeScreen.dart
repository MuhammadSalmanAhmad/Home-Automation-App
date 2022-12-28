import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/solar.jpeg'), fit: BoxFit.cover)),
      ),
      Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 80,
              ),
              const Center(
                child: Text(
                  "Welcome to smart home app",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color.fromARGB(255, 18, 44, 57),
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 500,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/Dashboard');
                },
                child:    Text(
                  "Get started",
                  style:  TextStyle(color: Colors.white, fontSize: 15),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff303F9F),
                    fixedSize: Size(180, 50)),
              )
            ],
          )),
    ]));
  }
}
