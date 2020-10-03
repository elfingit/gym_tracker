import 'package:flutter/material.dart';
import 'package:gym_tracker/utils/app_localization.dart';

class HomePage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppLocalization.of(context).translate("app_title")
        ),
      ),
      body: Stack(
        children: [
          new Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/background.jpg"),
                fit: BoxFit.cover
              ),
            ),
          ),
          new Center(
            child: Text("Test"),
          ),
        ],
      ),
    );
  }
}