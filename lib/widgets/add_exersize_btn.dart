import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:gym_tracker/stores/store.dart';
import 'package:gym_tracker/utils/app_localization.dart';

class AddExersizeBtn extends StatefulWidget {
  final SearchStore store;
  AddExersizeBtn({Key key, this.store}) : super(key: key);

  @override
  _AddExersizeBtnState createState() => _AddExersizeBtnState(store: store);
}

class _AddExersizeBtnState extends State<AddExersizeBtn> {
  final SearchStore store;

  _AddExersizeBtnState({this.store});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Observer(
      builder: (_) => store.isFilled
          ? FloatingActionButton.extended(
              onPressed: null,
              label:
                  Text(AppLocalization.of(context).translate('add_exersize')),
              icon: Icon(Icons.add),
            )
          : Container(),
    ));
  }
}
