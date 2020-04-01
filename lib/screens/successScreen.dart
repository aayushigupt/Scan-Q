import 'package:flutter/material.dart';

class SuccessScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: Padding(
            padding: EdgeInsets.all(12),
            child: Icon(
              Icons.chevron_left,
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: Center(
        child: Image.asset(
          "assets/tick.gif"
        ),
      ),
    );
  }
}