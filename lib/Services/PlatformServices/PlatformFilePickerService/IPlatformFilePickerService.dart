import 'dart:io';

import 'package:errorlog/Helpers/ServiceResult.dart';



/* Create a IPlatformFilePickerService as a abstract class */
abstract class IPlatformFilePickerService {

  // MMethod to pick muliple files from the device
  Future<ServiceResult<List<File>>> launchMultipleFilePicker(List<String> extensions);

  // Method to pick single file from the device
  Future<ServiceResult<File?>> launchSingleFilePicker(List<String> extensions);

}
