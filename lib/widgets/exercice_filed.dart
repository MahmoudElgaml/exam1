import 'package:exam1/models/ex_filed_model.dart';
import 'package:flutter/material.dart';

class ExFileds extends StatelessWidget {
  ExModel eX;

  ExFileds(this.eX);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment:  Alignment.center,
      width: 170,
      padding: const EdgeInsets.all(12),
   decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
     color: eX.color
   ),
      child: Row(
         mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(eX.txt,style: Theme.of(context).textTheme.bodySmall,),
          SizedBox(width: 10,),
          Image.asset(eX.image)
        ],
      ),
    );
  }
}
