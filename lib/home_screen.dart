import 'package:carousel_slider/carousel_slider.dart';
import 'package:exam1/models/ex_filed_model.dart';
import 'package:exam1/widgets/Icons.dart';
import 'package:exam1/widgets/exercice_filed.dart';
import 'package:exam1/widgets/fileds.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = "home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "."),
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "."),
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "."),
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "."),
        ],
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.black,
        type: BottomNavigationBarType.shifting,
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const ImageIcon(
          AssetImage("assets/images/Group6.png"),
          color: Colors.green,
        ),
        title: const Text(
          "Mody",
          style: TextStyle(
              color: Colors.black, fontSize: 30, fontWeight: FontWeight.w400),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Badge(
                smallSize: 10,
                alignment: Alignment.topRight,
                child: Icon(
                  Icons.notifications,
                  color: Colors.black,
                  size: 30,
                )),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "Hello, ",
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  Text(
                    "SaraRose",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "how are you filling today",
                style: Theme.of(context).textTheme.bodySmall,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconsL("Love", Icons.emoji_emotions),
                  IconsL("Cool", Icons.emoji_emotions_rounded),
                  IconsL("Happy", Icons.emoji_emotions),
                  IconsL("Sad", Icons.emoji_emotions),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Feature",
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "seemore >",
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontSize: 15,
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                        ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              CarouselSlider.builder(
                itemCount: 3,
                itemBuilder: (context, index, realIndex) => Fileds(),
                options: CarouselOptions(
                  enlargeCenterPage: true,
                  autoPlay: true,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
              //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ExFileds(
                    ExModel(
                      "relaxation",
                      "assets/images/Group2.png",
                      Color(0xFFf9f5ff),
                    ),
                  ),
                  SizedBox(width: 20,),
                  ExFileds(
                    ExModel(
                      "Mediation",
                      "assets/images/Group3.png",
                      Color(0xFFfdf2fa),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
               // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ExFileds(
                    ExModel(
                      "Breathing",
                      "assets/images/Group4.png",
                      const Color(0xFFfffaf5),
                    ),
                  ),
                  SizedBox(width: 20,),
                  ExFileds(
                    ExModel(
                      "Yoga",
                      "assets/images/Group5.png",
                      Color(0xFFf0f9ff),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
