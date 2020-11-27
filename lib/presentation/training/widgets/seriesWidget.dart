import 'package:flutter/material.dart';

class SeriesWidget extends StatelessWidget {
  @required
  final seriesNumber;

  SeriesWidget(this.seriesNumber);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    final textFieldHeight = (mediaQuery.height * 0.04);
    final textFieldWidth = (mediaQuery.width * 0.2);

    return Container(
      margin: EdgeInsets.only(top: mediaQuery.height * 0.01),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text('${this.seriesNumber + 1}'),
          ),
          Container(
            width: textFieldWidth,
            height: textFieldHeight,
            child: TextFormField(
              cursorHeight: textFieldHeight * 0.7,
              textAlign: TextAlign.center,
              cursorColor: Colors.grey,
              decoration: InputDecoration(
                fillColor: Colors.grey[600],
                filled: true,
                contentPadding: const EdgeInsets.all(3),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
              ),
            ),
          ),
          Container(
            width: textFieldWidth,
            height: textFieldHeight,
            child: TextFormField(
              cursorHeight: textFieldHeight * 0.7,
              textAlign: TextAlign.center,
              cursorColor: Colors.grey,
              decoration: InputDecoration(
                counterStyle: TextStyle(color: Colors.red),
                fillColor: Colors.grey[600],
                filled: true,
                contentPadding: const EdgeInsets.all(3),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
              ),
            ),
          ),
          Container(
            child: GestureDetector(onTap: () {}, child: Icon(Icons.delete)),
          ),
        ],
      ),
    );
  }
}
