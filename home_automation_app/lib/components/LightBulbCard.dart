import 'package:flutter/material.dart';

class Light extends StatelessWidget {
  const Light({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 170,
        width: 170,
        child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            color: Colors.white54,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Container(
                    height: 100,
                    width: 100,
                    child: const CircleAvatar(
                      backgroundColor: Colors.white54,
                      backgroundImage: AssetImage('assets/light-bulb.png'),
                    )),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Light",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                )
              ],
            )),
      ),
    );
  }
}
