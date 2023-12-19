// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'SecondScreenModel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$SecondScreenModel on _secondscreenmodelBase, Store {
  late final _$listOfErrorsAtom =
      Atom(name: '_secondscreenmodelBase.listOfErrors', context: context);

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
      Atom(name: '_secondscreenmodelBase.hasNotification', context: context);

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
      Atom(name: '_secondscreenmodelBase.count', context: context);

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
      Atom(name: '_secondscreenmodelBase.errorText', context: context);

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
      Atom(name: '_secondscreenmodelBase.isFocusChanged', context: context);

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

  late final _$passListOfErrorsAtom =
      Atom(name: '_secondscreenmodelBase.passListOfErrors', context: context);

  @override
  Map<PageConfig<dynamic>, List<String>> get passListOfErrors {
    _$passListOfErrorsAtom.reportRead();
    return super.passListOfErrors;
  }

  @override
  set passListOfErrors(Map<PageConfig<dynamic>, List<String>> value) {
    _$passListOfErrorsAtom.reportWrite(value, super.passListOfErrors, () {
      super.passListOfErrors = value;
    });
  }

  late final _$_secondscreenmodelBaseActionController =
      ActionController(name: '_secondscreenmodelBase', context: context);

  @override
  void setList({required List<String> listOfErrors}) {
    final _$actionInfo = _$_secondscreenmodelBaseActionController.startAction(
        name: '_secondscreenmodelBase.setList');
    try {
      return super.setList(listOfErrors: listOfErrors);
    } finally {
      _$_secondscreenmodelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setNotification({required bool hasNotification}) {
    final _$actionInfo = _$_secondscreenmodelBaseActionController.startAction(
        name: '_secondscreenmodelBase.setNotification');
    try {
      return super.setNotification(hasNotification: hasNotification);
    } finally {
      _$_secondscreenmodelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCountValue({required int count}) {
    final _$actionInfo = _$_secondscreenmodelBaseActionController.startAction(
        name: '_secondscreenmodelBase.setCountValue');
    try {
      return super.setCountValue(count: count);
    } finally {
      _$_secondscreenmodelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setErrorText({required String errorText}) {
    final _$actionInfo = _$_secondscreenmodelBaseActionController.startAction(
        name: '_secondscreenmodelBase.setErrorText');
    try {
      return super.setErrorText(errorText: errorText);
    } finally {
      _$_secondscreenmodelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setIsFocusChanged({required bool isFocusChanged}) {
    final _$actionInfo = _$_secondscreenmodelBaseActionController.startAction(
        name: '_secondscreenmodelBase.setIsFocusChanged');
    try {
      return super.setIsFocusChanged(isFocusChanged: isFocusChanged);
    } finally {
      _$_secondscreenmodelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
listOfErrors: ${listOfErrors},
hasNotification: ${hasNotification},
count: ${count},
errorText: ${errorText},
isFocusChanged: ${isFocusChanged},
passListOfErrors: ${passListOfErrors}
    ''';
  }
}
