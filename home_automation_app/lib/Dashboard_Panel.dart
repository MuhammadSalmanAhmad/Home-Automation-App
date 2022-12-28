import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'components/FanCard.dart';
import 'components/LightBulbCard.dart';
class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          
          title: const Text(
            "TESLA HOMES",
            textAlign: TextAlign.center,
          ),
          backgroundColor: Colors.blueGrey,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20,
              ),
              const Center(
                  child: Text("Temperature",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueGrey))),
              const SizedBox(
                height: 20,
              ),
              CircularPercentIndicator(
                animation: true,
                radius: 100,
                lineWidth: 20,
                progressColor: Colors.blueGrey,
                percent: 0.4,
                circularStrokeCap: CircularStrokeCap.round,
                center: const Text(
                  "40 °C",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              const SizedBox(height: 20,),
              const Padding(padding: EdgeInsets.symmetric(horizontal: 20),child: Text("Devices",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),),
              const SizedBox(height: 20,),
              const Center(child: Text("Tap to know status ",style: TextStyle(color: Color.fromARGB(255, 12, 96, 87),fontSize: 20),)),
              const SizedBox(height: 20,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [FanCard(),Light()],
              ),
            ],
          ),
        ));
  }
}
