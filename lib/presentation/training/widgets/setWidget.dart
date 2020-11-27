import 'package:flutter/material.dart';

class SetWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    final textFieldHeight = (mediaQuery.height * 0.075);
    final textFirldWidth = (mediaQuery.width * 0.25);

    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text('1'),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 5),
            width: textFirldWidth,
            height: textFieldHeight,
            child: TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 5),
            width: textFirldWidth,
            height: textFieldHeight,
            child: TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
              ),
            ),
          ),
          Container(
            width: mediaQuery.width * 0.1,
            child: IconButton(icon: Icon(Icons.delete), onPressed: () {}),
          ),
        ],
      ),
    );
  }
}
