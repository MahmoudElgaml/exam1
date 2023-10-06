import 'package:flutter/material.dart';

class Fileds extends StatelessWidget {
  const Fileds({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * .2,
      decoration:  BoxDecoration(
        color: const Color(0xFFecfdf3),
        borderRadius:BorderRadius.circular(25),
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
                  const Text("Positive vibes"),
                  const SizedBox(height: 20,),
                  const Text("Positive your mode with"),
                  const SizedBox(height: 20,),
                  const Text("Positive vibes"),
                  const Spacer(),
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.green,
                       shape: BoxShape.circle
                    ),

                      child: const Icon(
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
