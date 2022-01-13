import 'package:flutter/material.dart';
import 'package:page_flip_builder/page_flip_builder.dart';
import 'package:sizer/sizer.dart';
import 'package:training_log/presentation/workout/timers_page.dart';
import 'package:training_log/presentation/workout/workouts_view_page.dart';

class WorkoutsMainPage extends StatelessWidget {
  WorkoutsMainPage({Key? key}) : super(key: key);

  final pageFlipKey = GlobalKey<PageFlipBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Theme.of(context).splashColor,
            child: PageFlipBuilder(
                key: pageFlipKey,
                frontBuilder: (_) => WorkoutsViewPage(),
                backBuilder: (_) => TimersPage()),
          ),
          Positioned(
            bottom: 3.h,
            left: 45.w,
            child: GestureDetector(
                onTap: () => pageFlipKey.currentState?.flip(),
                child: Icon(
                  Icons.change_circle_sharp,
                  color: Theme.of(context).primaryColor,
                  size: 10.w,
                )),
          ),
        ],
      ),
    );
  }
}
