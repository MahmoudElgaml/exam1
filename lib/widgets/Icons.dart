import 'package:flutter/material.dart';

class IconsL extends StatelessWidget {
  String txt;
  IconData icon;


  IconsL(this.txt, this.icon);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50,
          width: 50,
          margin:  EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.grey,
            shape: BoxShape.circle,
          ),
          child: Icon(
           icon,
             color: Colors.white,
            size: 35,
          ),
        ),
        Text(txt)
      ],
    );
  }
}
