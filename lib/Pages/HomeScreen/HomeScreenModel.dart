
// import 'package:errorlog/Helpers/AppNavigations/NavigationMixin.dart';
// import 'package:errorlog/Helpers/Utilities/Utilities.dart';
// import 'package:errorlog/Services/PlatformServices/PlatformFilePickerService/PlatformFilePickerService.dart';
// import 'package:mobx/mobx.dart';
// part 'HomeScreenModel.g.dart';

// class HomeScreenModel = _HomeScreenModelBase with _$HomeScreenModel,NavigationMixin;

// abstract class _HomeScreenModelBase with Store {

//   PlatformFilePickerService platformFilePickerService = PlatformFilePickerService();
  
//   @observable
//   List<String> listOfErrors = [];

//   @action 
//   void setList({required List<String> listOfErrors}){
//     listOfErrors = [];
//     this.listOfErrors = listOfErrors;
//   }

//   @observable 
//   bool hasNotification = false;

//   @action 
//   void setNotification({required bool hasNotification}){
//     this.hasNotification = hasNotification;
//   }

//   @observable
//   int count = 0;

//    @action 
//   void setCountValue({required int count}){
//     this.count = count;
//   } 

//   String text = "";

//   @observable 
//   String errorText = '';
   
//   @action 
//   void setErrorText({required String errorText}){
//     this.errorText = errorText;
//   }

//   // Create a observable variable isFocusChanged of type bool as false
//   @observable
//   bool isFocusChanged = false;

// /* Create a void method with the name setIsFocusChanged with the named parameter index of type bool that sets the isFocusChanged to isFocusChanged */
//   @action
//   setIsFocusChanged({required bool isFocusChanged}) {
//     this.isFocusChanged = isFocusChanged;
//   }

//   @observable
//     int selectedIndex = 0;
// @action 
// void setCurrentIndex({required int selectedIndex}){
//   this.selectedIndex = selectedIndex;
// }

// }