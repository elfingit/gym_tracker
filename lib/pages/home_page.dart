import 'package:flutter/material.dart';
import 'package:gym_tracker/stores/store.dart';
import 'package:gym_tracker/utils/app_localization.dart';
import 'package:gym_tracker/widgets/add_exersize_btn.dart';
import 'package:gym_tracker/widgets/search_exersize.dart';

class HomePage extends StatelessWidget {
  final SearchStore store = SearchStore();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(AppLocalization.of(context).translate("app_title")),
      ),
      floatingActionButton: AddExersizeBtn(store: store),
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
                child: SearchExersize(store: store),
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
