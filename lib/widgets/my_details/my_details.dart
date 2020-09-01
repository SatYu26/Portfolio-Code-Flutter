import 'package:flutter/material.dart';

class MyDetails extends StatelessWidget {
  const MyDetails({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Hello World!',
            style: TextStyle(
                fontWeight: FontWeight.w600, fontSize: 50,  color: Colors.red),
          ),
          Text(
            'I am\nSatyam Goyal',
            style: TextStyle(
                fontWeight: FontWeight.w500, fontSize: 50, color: Colors.red),
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            'A friendly Neighbourhood Developer.',
            style: TextStyle(fontSize: 21, height: 1.7),
          ),
        ],
      ),
    );
  }
}