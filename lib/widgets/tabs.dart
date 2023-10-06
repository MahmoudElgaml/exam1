import 'package:exam1/widgets/programs_catergy.dart';
import 'package:flutter/material.dart';

class Tabs extends StatelessWidget {
  const Tabs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Column(
        children: [
          TabBar(
            tabs: [
              Text(
                "All Type",
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(fontSize: 18),
              ),
              Text(
                "Full Body",
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(fontSize: 18),
              ),
              Text(
                "Uper",
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(fontSize: 18),
              ),
              Text(
                "Lower",
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(fontSize: 18),
              ),
            ],
            indicatorColor: Colors.black26,
            isScrollable: true,
            indicatorSize: TabBarIndicatorSize.label,
          ),
          Container(
            height: MediaQuery.of(context).size.height * .55,
            child: TabBarView(
              children: [
                Container(
                  padding: EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          child: ListView.separated(
                            separatorBuilder: (context, index) => SizedBox(height: 20,),
                        itemBuilder: (context, index) => ProgramCon(),
                        itemCount: 3,
                      ))
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          child: ListView.separated(
                            separatorBuilder: (context, index) => SizedBox(height: 20,),
                        itemBuilder: (context, index) => ProgramCon(),
                        itemCount: 3,
                      ))
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          child: ListView.separated(
                            separatorBuilder: (context, index) => SizedBox(height: 20,),
                        itemBuilder: (context, index) => ProgramCon(),
                        itemCount: 3,
                      ))
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          child: ListView.separated(
                            separatorBuilder: (context, index) => SizedBox(height: 20,),
                        itemBuilder: (context, index) => ProgramCon(),
                        itemCount: 3,
                      ))
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
