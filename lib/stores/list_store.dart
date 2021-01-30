import 'package:flutter/foundation.dart';
import 'package:mobx/mobx.dart';
part 'list_store.g.dart';

class ListStore = _ListStore with _$ListStore;

abstract class _ListStore with Store{
  @observable
  String newTodoName = "";

  @action
  void setNewTodoName(String value) => newTodoName = value;

  @computed
  bool get isFormValid => newTodoName.isNotEmpty;

  ObservableList<String> namesLista = ObservableList<String>();

  @observable
  String edditingName;
  @action
  void setEdditingname(String value) => edditingName = value;

  @action
  void addList(){
    namesLista.add(newTodoName);
  }
  @action
  void removeList(){
    namesLista.remove(newTodoName);

  }

  @action
  void editList(){
    namesLista.remove(newTodoName);
    namesLista.add(edditingName);

  }




}