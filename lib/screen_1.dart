import 'package:exam1/widgets/tabs.dart';
import 'package:exam1/widgets/workout_con.dart';
import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  static const String routeName = "dg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("assets/images/Ellipse 10.png"),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello, Jade",
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Ready to Workout?",
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ],
                  ),
                  const Spacer(),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Badge(
                      child: Icon(Icons.notifications_none_outlined, size: 35),
                      smallSize: 10,
                    ),
                  )
                ],
              ),
              WorkOut(),
              SizedBox(
                height: 20,
              ),
              Text(
                "workout Programs",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              SizedBox(
                height: 20,
              ),
              Tabs(),

            ],
          ),
        ),
      ),
    );
  }
}
