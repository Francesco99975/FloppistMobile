import 'package:flutter/material.dart';
import 'package:flutter_floppist_mobile/shared/app_bar.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: drawer,
      appBar: appBar,
      body: Container(
        color: Colors.teal,
        child: Center(
          child: Text(
            'ABOUT',
            style: TextStyle(
              color: Colors.yellow[500],
              fontSize: 38.0
            ),
          ),
        ),
      )
    );
  }
}