// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'HomeScreenModel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeScreenModel on _HomeScreenModelBase, Store {
  late final _$listOfErrorsAtom =
      Atom(name: '_HomeScreenModelBase.listOfErrors', context: context);

  @override
  List<String> get listOfErrors {
    _$listOfErrorsAtom.reportRead();
    return super.listOfErrors;
  }

  @override
  set listOfErrors(List<String> value) {
    _$listOfErrorsAtom.reportWrite(value, super.listOfErrors, () {
      super.listOfErrors = value;
    });
  }

  late final _$hasNotificationAtom =
      Atom(name: '_HomeScreenModelBase.hasNotification', context: context);

  @override
  bool get hasNotification {
    _$hasNotificationAtom.reportRead();
    return super.hasNotification;
  }

  @override
  set hasNotification(bool value) {
    _$hasNotificationAtom.reportWrite(value, super.hasNotification, () {
      super.hasNotification = value;
    });
  }

  late final _$countAtom =
      Atom(name: '_HomeScreenModelBase.count', context: context);

  @override
  int get count {
    _$countAtom.reportRead();
    return super.count;
  }

  @override
  set count(int value) {
    _$countAtom.reportWrite(value, super.count, () {
      super.count = value;
    });
  }

  late final _$errorTextAtom =
      Atom(name: '_HomeScreenModelBase.errorText', context: context);

  @override
  String get errorText {
    _$errorTextAtom.reportRead();
    return super.errorText;
  }

  @override
  set errorText(String value) {
    _$errorTextAtom.reportWrite(value, super.errorText, () {
      super.errorText = value;
    });
  }

  late final _$isFocusChangedAtom =
      Atom(name: '_HomeScreenModelBase.isFocusChanged', context: context);

  @override
  bool get isFocusChanged {
    _$isFocusChangedAtom.reportRead();
    return super.isFocusChanged;
  }

  @override
  set isFocusChanged(bool value) {
    _$isFocusChangedAtom.reportWrite(value, super.isFocusChanged, () {
      super.isFocusChanged = value;
    });
  }

  late final _$_HomeScreenModelBaseActionController =
      ActionController(name: '_HomeScreenModelBase', context: context);

  @override
  void setList({required List<String> listOfErrors}) {
    final _$actionInfo = _$_HomeScreenModelBaseActionController.startAction(
        name: '_HomeScreenModelBase.setList');
    try {
      return super.setList(listOfErrors: listOfErrors);
    } finally {
      _$_HomeScreenModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setNotification({required bool hasNotification}) {
    final _$actionInfo = _$_HomeScreenModelBaseActionController.startAction(
        name: '_HomeScreenModelBase.setNotification');
    try {
      return super.setNotification(hasNotification: hasNotification);
    } finally {
      _$_HomeScreenModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCountValue({required int count}) {
    final _$actionInfo = _$_HomeScreenModelBaseActionController.startAction(
        name: '_HomeScreenModelBase.setCountValue');
    try {
      return super.setCountValue(count: count);
    } finally {
      _$_HomeScreenModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setErrorText({required String errorText}) {
    final _$actionInfo = _$_HomeScreenModelBaseActionController.startAction(
        name: '_HomeScreenModelBase.setErrorText');
    try {
      return super.setErrorText(errorText: errorText);
    } finally {
      _$_HomeScreenModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setIsFocusChanged({required bool isFocusChanged}) {
    final _$actionInfo = _$_HomeScreenModelBaseActionController.startAction(
        name: '_HomeScreenModelBase.setIsFocusChanged');
    try {
      return super.setIsFocusChanged(isFocusChanged: isFocusChanged);
    } finally {
      _$_HomeScreenModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
listOfErrors: ${listOfErrors},
hasNotification: ${hasNotification},
count: ${count},
errorText: ${errorText},
isFocusChanged: ${isFocusChanged}
    ''';
  }
}
