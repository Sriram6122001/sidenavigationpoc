import 'package:errorlog/Helpers/Utilities/Utilities.dart';
import 'package:errorlog/Pages/SideNavigation/ErrorModel.dart';
import 'package:errorlog/Pages/SideNavigation/DependentViews/HomeScreen.dart';
import 'package:errorlog/Pages/SideNavigation/DependentViews/SecondScreen.dart';

class ErrorVM extends ErrorModel {
  // ErrorVM() {
  //   pages.addAll([
  //     HomeScreen(
  //       extraData: selectedIndex,
  //       errorText: errorText,
  //       isFocusChanged: isFocusChanged,
  //       testFunction: testFunction,
  //       navigate: () {},
  //       setErrorText: setErrorText,
  //       selectedIndex: setCurrentIndex,
  //       overallErrorList: overallErrorList,

  //     ),
  //     SecondScreen(
  //       extraData: selectedIndex,
  //       errorText: errorTextInSecondScreen,
  //       isFocusChanged: isFocusChangedInSecondScreen,
  //       testFunction: testFunctionInSecondScreen,
  //       navigate: () {},
  //         setErrorText: setErrorTextInSecondScreen,
  //          selectedIndex: setCurrentIndex,
  //           overallErrorList: overallErrorList,
  //     ),
  //   ]);
  // }

  //HomeScreen

  /* Create a method named handleCreateProject of return type Future<void> with a parameter requestProjectBO as required */
  void testFunction({required String text}) async {
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
        print(listOfErrors);
        // collectionOfErrors[Pages.secondScreenConfig] = listOfErrors;
        overallErrorList.add({0: listOfErrors});
        print('##########$overallErrorList');
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

//SecondScreen

/* Create a method named handleCreateProject of return type Future<void> with a parameter requestProjectBO as required */
  void testFunctionInSecondScreen({required String text}) async {
    try {
      // **ASSIGN** the response in the variable **response**
      bool response = validateUrlInSecondScreen(inputText: text);

      // IF(response)
      if (response) {
        print("Okay");
        // **SET** the **errorText** as ""
        setErrorTextInSecondScreen(errorTextInSecondScreen: "");
      } else {
        // **SET** the **errorText** as 'Please enter a valid URL'
        setErrorTextInSecondScreen(errorTextInSecondScreen: 'Enter no text');
        listOfErrorsInSecondScreen.add(errorText);
        // collectionOfErrors[Pages.secondScreenConfig]=listOfErrors;
        overallErrorList.add({1: listOfErrorsInSecondScreen});
        print('$overallErrorList###########');
        // passListOfErrors[Pages.secondScreenConfig] = listOfErrors;
      }

      // Invoke invokeCreateProject(projectDetails: requestProjectBO)
    } catch (ex) {
      // Invoke **writeException() to the Exception object ex**
      ex.writeExceptionData();
    }
  }

/* Create a method named named validateUrl of return type void with the parameter inputWebUrl of type String */
  bool validateUrlInSecondScreen({required String inputText}) {
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

// int navigate() {
//   int returnKey;
//   outerLoop:
//   for (var element in overallErrorList) {
//     for (var value in element.values) {
//       if (value.contains(listOfErrors)) {
//         returnKey = 0;
//         break outerLoop;
//       } else {
//         returnKey = 1;
//       }
//     }
//   }
//   return returnKey;
// }


}
