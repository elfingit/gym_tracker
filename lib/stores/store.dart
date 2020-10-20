import 'package:mobx/mobx.dart';

part 'store.g.dart';

class SearchStore = _SearchStore with _$SearchStore;

abstract class _SearchStore with Store {
  @observable
  String name = '';

  @action
  void setName(String value) => name = value;

  @computed
  bool get isFilled => name.length > 3;

  dispose() {}
}