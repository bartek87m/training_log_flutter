import 'package:flutter/material.dart';

class SetWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Column(
              children: [
                Text('Set'),
                Container(
                    padding: EdgeInsets.only(top: mediaQuery.height * 0.025),
                    child: Text('1'))
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Text('Weight'),
                SizedBox(
                    width: mediaQuery.width * 0.12,
                    height: mediaQuery.height * 0.05,
                    child: TextFormField())
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Text('Reps'),
                SizedBox(
                    width: mediaQuery.width * 0.12,
                    height: mediaQuery.height * 0.05,
                    child: TextFormField())
              ],
            ),
          ),
        ],
      ),
    );
  }
}
