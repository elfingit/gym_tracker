import 'package:flutter/material.dart';
import 'package:gym_tracker/utils/app_localization.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(AppLocalization.of(context).translate("app_title")),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/background.jpg"),
                  fit: BoxFit.cover),
            ),
          ),
          Column(children: [
            Spacer(
              flex: 1,
            ),
            Expanded(
              flex: 6,
              child: Container(
                padding: const EdgeInsets.only(
                  top: 25.0,
                  left: 15.0,
                  right: 15.0
                ),
                color: Colors.white,
                child: TextFormField(
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    isDense: true,
                    prefixIcon: Icon(Icons.search),
                    labelText: 'Search',
                    labelStyle: TextStyle(fontSize: 24),
                  ),
                ),
              ),
            ),
            Spacer(
              flex: 24,
            ),
          ]),
        ],
      ),
    );
  }
}
