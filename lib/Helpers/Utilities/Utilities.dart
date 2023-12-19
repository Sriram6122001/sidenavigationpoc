// ignore_for_file: file_names

import 'package:errorlog/Helpers/AppNavigations/NavigationConfig.dart';
import 'package:errorlog/Helpers/AppNavigations/NavigationHelpers.dart';
import 'package:flutter/foundation.dart';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

extension ExceptionalHandling on Object {
  void writeExceptionData() {
    try {
      // print the catched exception
      debugPrint("* --_-- Exception --_-- *");

      debugPrint(this.toString());

      debugPrint("* --_-- --_-- *");
    } catch (error) {
      debugPrint("* --_-- Exception --_-- *");

      // prints the exception caught while printing the exception
      debugPrint(error.toString());

      debugPrint("* --_-- --_-- *");
    }
  }
}

/// Creates an instance of the [PlatformWrapper] class to provide access to platform-specific functionalities.
///
/// Example usage:
/// ```dart
/// PlatformWrapper platformWrapper = PlatformWrapper();
/// bool isWindows = platformWrapper.isWindows;
/// print('Is Windows? $isWindows');
/// ```
class PlatformWrapper {
  /// Returns a boolean value indicating whether the current platform is Windows.
  ///
  /// Returns `true` if the current platform is Windows, and `false` otherwise.
  bool get isWindows => Platform.isWindows;
}

// mixin errorList on Object{
// List<Map<PageConfig<dynamic>,List<String>>> overallErrorList= [];
// }

class ErrorHandler {
  static List<Map<PageConfig<dynamic>, List<String>>> overallErrorList = [];
  
// @observable
// static int selectedIndex = 0;
// @action
// static void setCurrentIndex({required int index}) {
//   selectedIndex = index;
// }
}

