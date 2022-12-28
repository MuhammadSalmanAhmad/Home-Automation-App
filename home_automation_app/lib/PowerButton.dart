import 'package:flutter/material.dart';

class PowerButton extends StatelessWidget {
  const PowerButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Power",style: TextStyle(color: Colors.white),),),
        backgroundColor: Colors.blueGrey,
      ),
      backgroundColor: const Color(0xff455A64),
      body: Column(
        children: [
          SizedBox(height:  200,),
          Padding(padding: EdgeInsets.symmetric(horizontal: 70),
          child:  IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.power_settings_new,
                    size: 200,
                    color: Colors.teal,
                  ),
                  
                  ),
          ),
        ],
      )
    );
  }
}
