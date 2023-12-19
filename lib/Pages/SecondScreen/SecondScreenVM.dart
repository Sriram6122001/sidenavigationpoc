import 'package:errorlog/Helpers/AppNavigations/NavigationConfig.dart';
import 'package:errorlog/Helpers/ServiceResult.dart';
import 'package:errorlog/Helpers/Utilities/Utilities.dart';
import 'package:errorlog/Pages/SecondScreen/SecondScreenModel.dart';

class SecondScreenVM extends SecondScreenModel{

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
        setErrorText(errorText: 'Enter no text');
          listOfErrors.add(errorText);
        // collectionOfErrors[Pages.secondScreenConfig]=listOfErrors;
           ErrorHandler.overallErrorList.add({Pages.secondScreenConfig: listOfErrors});
      
        // passListOfErrors[Pages.secondScreenConfig] = listOfErrors;
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

  // Future<void> pickImageFile()async {
  //   ServiceResult response = await platformFilePickerService.launchSingleFilePicker(['svg']);
  //   print(response.content);
  // }
}