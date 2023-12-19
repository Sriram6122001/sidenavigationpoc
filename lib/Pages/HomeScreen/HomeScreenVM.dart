import 'package:errorlog/Helpers/AppNavigations/NavigationConfig.dart';
import 'package:errorlog/Helpers/AppNavigations/NavigationHelpers.dart';
import 'package:errorlog/Helpers/AppNavigations/NavigationMixin.dart';
import 'package:errorlog/Helpers/ServiceResult.dart';
import 'package:errorlog/Helpers/Utilities/Utilities.dart';
import 'package:errorlog/Pages/HomeScreen/HomeScreenModel.dart';
import 'package:flutter/foundation.dart';

class HomeScreenVM extends HomeScreenModel {

  HomeScreenVM(){
  }
/* Create a method named handleCreateProject of return type Future<void> with a parameter requestProjectBO as required */
  Future<void> testFunction({required String text}) async {
    try {
      // **ASSIGN** the response in the variable **response**
      bool response = validateUrl(inputText: text);

      // IF(response)
      if (response) {
        print("Okay");
        // **SET** the **errorText** as ""
        setErrorText(errorText: "");
      } else {
        // **SET** the **errorText** as 'Please enter a valid URL'
        setErrorText(errorText: 'Enter valid text');
        listOfErrors.add(errorText);
        // collectionOfErrors[Pages.secondScreenConfig] = listOfErrors;
        ErrorHandler.overallErrorList.add({Pages.homeScreenConfig: listOfErrors});
        // print(overallErrorList[0].map((key, value) => ));
      }

      // Invoke invokeCreateProject(projectDetails: requestProjectBO)
    } catch (ex) {
      // Invoke **writeException() to the Exception object ex**
      ex.writeExceptionData();
    }
  }

/* Create a method named named validateUrl of return type void with the parameter inputWebUrl of type String */
  bool validateUrl({required String inputText}) {
    try {
      // **(IF AppConstants.webUrlRegex.hasMatch(webUrl))**
      if (inputText == "Test") {
        // RETURN true
        return true;
      } else {
        // RETURN false
        return false;
      }
    } catch (ex) {
      // INVOKE **writeException() to the Exception object ex**
      ex.writeExceptionData();
      return false;
    }
  }

  Future<void> pickImageFile() async {
    ServiceResult response =
        await platformFilePickerService.launchSingleFilePicker(['svg']);
    print(response.content);
  }


void navigate() {
  PageConfig<dynamic>? key;

  for (var map in ErrorHandler.overallErrorList) {
    for (var entry in map.entries) {
      if (listEquals(entry.value, listOfErrors)) {
        key = entry.key;
        break;
      }
    }

    if (key != null) {
      break;
    }
  }

  if (key != null) {
    print(key);
    navigationStream.add(NavigatorPush(pageConfig: key, data: null));
  } else {
    // Handle the case where no matching key was found
    print('No matching key found for listOfErrors');
  }
}



}
