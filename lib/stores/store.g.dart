// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SearchStore on _SearchStore, Store {
  Computed<bool> _$isFilledComputed;

  @override
  bool get isFilled => (_$isFilledComputed ??=
          Computed<bool>(() => super.isFilled, name: '_SearchStore.isFilled'))
      .value;

  final _$nameAtom = Atom(name: '_SearchStore.name');

  @override
  String get name {
    _$nameAtom.reportRead();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.reportWrite(value, super.name, () {
      super.name = value;
    });
  }

  final _$_SearchStoreActionController = ActionController(name: '_SearchStore');

  @override
  void setName(String value) {
    final _$actionInfo = _$_SearchStoreActionController.startAction(
        name: '_SearchStore.setName');
    try {
      return super.setName(value);
    } finally {
      _$_SearchStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
name: ${name},
isFilled: ${isFilled}
    ''';
  }
}
