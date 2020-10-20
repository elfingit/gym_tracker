import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:gym_tracker/stores/store.dart';

class SearchExersize extends StatefulWidget {
  final SearchStore store;
  SearchExersize({Key key, this.store}) : super(key: key);

  @override
  _SearchExersizeState createState() => _SearchExersizeState(store: store);
}

class _SearchExersizeState extends State<SearchExersize> {

  final SearchStore store;

  _SearchExersizeState({this.store});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Observer(
        builder: (_) => TextFormField(
          onChanged: (value) => store.name = value,
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            isDense: true,
            prefixIcon: Icon(Icons.search),
            labelText: 'Search',
            labelStyle: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}
