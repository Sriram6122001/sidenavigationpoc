import 'package:errorlog/Helpers/AppNavigations/NavigationHelpers.dart';
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

  List<Map<int, List<String>>> overallErrorList = [];




  //HomeScreen

  @observable
  List<String> listOfErrors = [];

  @action
  void setList({required List<String> listOfErrors}) {
    listOfErrors = [];
    this.listOfErrors = listOfErrors;
  }

  @observable
  bool hasNotification = false;

  @action
  void setNotification({required bool hasNotification}) {
    this.hasNotification = hasNotification;
  }

  @observable
  int count = 0;

  @action
  void setCountValue({required int count}) {
    this.count = count;
  }

  String text = "";

  @observable
  String errorText = '';

  @action
  void setErrorText({required String errorText}) {
    this.errorText = errorText;
  }

  // Create a observable variable isFocusChanged of type bool as false
  @observable
  bool isFocusChanged = false;

/* Create a void method with the name setIsFocusChanged with the named parameter index of type bool that sets the isFocusChanged to isFocusChanged */
  @action
  setIsFocusChanged({required bool isFocusChanged}) {
    this.isFocusChanged = isFocusChanged;
  }







  //SecondScreen

   @observable
  List<String> listOfErrorsInSecondScreen = [];

  @action 
  void setListInSecondScreen({required List<String> listOfErrorsInSecondScreen}){
    listOfErrorsInSecondScreen = [];
    this.listOfErrorsInSecondScreen = listOfErrorsInSecondScreen;
  }

  @observable 
  bool hasNotificationInSecondScreen = false;

  @action 
  void setNotificationInSecondScreen({required bool hasNotification}){
    this.hasNotification = hasNotification;
  }

  @observable
  int countInSecondScreen = 0;

   @action 
  void setCountValueInSecondScreen({required int count}){
    this.count = count;
  } 


  @observable 
  String errorTextInSecondScreen = '';
   
  @action 
  void setErrorTextInSecondScreen({required String errorTextInSecondScreen}){
    this.errorTextInSecondScreen = errorTextInSecondScreen;
  }

  // Create a observable variable isFocusChanged of type bool as false
  @observable
  bool isFocusChangedInSecondScreen = false;

/* Create a void method with the name setIsFocusChanged with the named parameter index of type bool that sets the isFocusChanged to isFocusChanged */
  @action
  setIsFocusChangedInSecondScreen({required bool isFocusChanged}) {
    this.isFocusChanged = isFocusChanged;
  }

  @observable
  Map<PageConfig<dynamic>,List<String>> passListOfErrors = {};

  // @action 
  // void setErrorMap({required  Map<PageConfig<dynamic>,List<String>> passListOfErrors}){
  //   passListOfErrors = {};
  //   this.passListOfErrors = passListOfErrors;
  // }

    @observable
    int selectedIndexInSecondScreen = 0;
@action 
void setCurrentIndexInSecondScreen({required int selectedIndex}){
  this.selectedIndex = selectedIndex;
}
}
