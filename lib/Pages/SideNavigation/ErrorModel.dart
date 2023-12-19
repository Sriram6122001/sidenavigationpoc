import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
part 'ErrorModel.g.dart';

class ErrorModel = _ErrorModelBase with _$ErrorModel;

abstract class _ErrorModelBase with Store {
  @observable
  int selectedIndex = 0;
  @action
  void setCurrentIndex({required int selectedIndex}) {
    this.selectedIndex = selectedIndex;
  }

  List<Widget> pages = [];
}
