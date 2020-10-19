import 'package:mobx/mobx.dart';

part 'store.g.dart';

class FormStore = _FormStore with _$FormStore;

abstract class _FormStore with Store {
  @observable
  String name = '';

  @action
  void setName(String value) => name = value;

  dispose() {}
}