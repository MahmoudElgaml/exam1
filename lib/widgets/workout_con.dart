import 'package:flutter/material.dart';

class WorkOut extends StatelessWidget {
  const WorkOut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 25),
      decoration: BoxDecoration(
        color: Color(0xFFf8f9fc),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Column(
            children: [
              Row(
                children: [
                  Icon(Icons.heart_broken),
                  Text(
                    "Heart Rate",
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "81 BPM",
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(fontWeight: FontWeight.bold),
              )
            ],
          ),
          Container(
            padding: const EdgeInsets.only(left: 10, right: 10),
            height: 40,
            child: const VerticalDivider(
              color: Colors.grey,
              thickness: 1,
            ),
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.menu),
                  Text(
                    "TO-do",
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .copyWith(fontSize: 15),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "32,5 % ",
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              )
            ],
          ),
          Container(
            padding: const EdgeInsets.only(left: 10, right: 10),
            height: 40,
            child: const VerticalDivider(
              color: Colors.grey,
              thickness: 1,
            ),
          ),
          Column(
            children: [
              Row(
                children: [
                  Icon(Icons.local_fire_department_rounded),
                  Text(
                    "Calo",
                    style: Theme.of(context).textTheme.bodySmall!,
                  ),

                ],

              ),
              Text("1000 Cal",style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  fontWeight: FontWeight.bold
              ),),
            ],
          ),
        ],
      ),
    );
  }
}
