// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ListStore on _ListStore, Store {
  Computed<bool> _$isFormValidComputed;

  @override
  bool get isFormValid =>
      (_$isFormValidComputed ??= Computed<bool>(() => super.isFormValid,
              name: '_ListStore.isFormValid'))
          .value;

  final _$newTodoNameAtom = Atom(name: '_ListStore.newTodoName');

  @override
  String get newTodoName {
    _$newTodoNameAtom.reportRead();
    return super.newTodoName;
  }

  @override
  set newTodoName(String value) {
    _$newTodoNameAtom.reportWrite(value, super.newTodoName, () {
      super.newTodoName = value;
    });
  }

  final _$edditingNameAtom = Atom(name: '_ListStore.edditingName');

  @override
  String get edditingName {
    _$edditingNameAtom.reportRead();
    return super.edditingName;
  }

  @override
  set edditingName(String value) {
    _$edditingNameAtom.reportWrite(value, super.edditingName, () {
      super.edditingName = value;
    });
  }

  final _$_ListStoreActionController = ActionController(name: '_ListStore');

  @override
  void setNewTodoName(String value) {
    final _$actionInfo = _$_ListStoreActionController.startAction(
        name: '_ListStore.setNewTodoName');
    try {
      return super.setNewTodoName(value);
    } finally {
      _$_ListStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setEdditingname(String value) {
    final _$actionInfo = _$_ListStoreActionController.startAction(
        name: '_ListStore.setEdditingname');
    try {
      return super.setEdditingname(value);
    } finally {
      _$_ListStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addList() {
    final _$actionInfo =
        _$_ListStoreActionController.startAction(name: '_ListStore.addList');
    try {
      return super.addList();
    } finally {
      _$_ListStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeList() {
    final _$actionInfo =
        _$_ListStoreActionController.startAction(name: '_ListStore.removeList');
    try {
      return super.removeList();
    } finally {
      _$_ListStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void editList() {
    final _$actionInfo =
        _$_ListStoreActionController.startAction(name: '_ListStore.editList');
    try {
      return super.editList();
    } finally {
      _$_ListStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
newTodoName: ${newTodoName},
edditingName: ${edditingName},
isFormValid: ${isFormValid}
    ''';
  }
}
