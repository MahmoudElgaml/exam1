import 'package:flutter/material.dart';

class Fileds extends StatelessWidget {
  const Fileds({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * .3,
      decoration: BoxDecoration(
        color: Color(0xFFecfdf3),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment:  MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Positive vibes"),
                  SizedBox(height: 20,),
                  Text("Positive your mode with"),
                  SizedBox(height: 20,),
                  Text("Positive vibes"),
                  Spacer(),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.green,
                       shape: BoxShape.circle
                    ),

                      child: Icon(
                    Icons.play_arrow,
                    color: Colors.white,
                  ))
                ],
              ),
            ),
            Expanded(child: Image.asset("assets/images/Walking the Dog.png")),
          ],
        ),
      ),
    );
  }
}
