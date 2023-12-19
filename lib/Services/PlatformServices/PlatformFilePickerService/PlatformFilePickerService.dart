import 'dart:io';

import 'package:errorlog/Helpers/ServiceResult.dart';
import 'package:errorlog/Helpers/Utilities/Utilities.dart';
import 'package:errorlog/Services/PlatformServices/PlatformFilePickerService/IPlatformFilePickerService.dart';
import 'package:file_picker/file_picker.dart';



/* Create a PlatformFilePickerService that extends the interface IPlatformFilePickerService*/
class PlatformFilePickerService extends IPlatformFilePickerService {



  /* Create a method pickFiles() to pick multiple files from the device */
  @override
  Future<ServiceResult<List<File>>> launchMultipleFilePicker(List<String> extensions) async {
    try {

      // Pick the files using File picker's pickFiles() and store it in 'result' variable
      // Set allowMultiple property of pickFiles() true, to pick multiple files
      // Set the desired extensions in allowedExtensions property of pickFiles()
      // Set type property of pickFiles() to custom to set desired extensions
      FilePickerResult? result =
          await FilePicker.platform.pickFiles(allowMultiple: true,allowedExtensions: extensions,type: FileType.custom);
      
      // Check the result
      if (result != null) {

        // If not null, Convert the list of picked file paths to list of files and store it in 'files' variable
        // Store the list of files in 'files' variable
        List<File> files = result.paths.map((path) => File(path ?? '')).toList();

        // Return the files
        return ServiceResult(statusCode: ServiceStatusCode.OK, content: files);
      } else {

        // Return empty list
        return ServiceResult(statusCode: ServiceStatusCode.SystemException, content: []);
      }
    } catch (e) {

      // Invoke writeExceptionData()
      e.writeExceptionData();

      // Return empty list
      return ServiceResult(statusCode: ServiceStatusCode.SystemException,message: e.toString(),content: []);
    }   
  }

   /* Create a method pickFiles() to pick the files from the device */
  @override
  Future<ServiceResult<File?>> launchSingleFilePicker(List<String> extensions) async {
    try {

      // Pick the file using File picker's pickFiles() and store it in 'result' variable
      // Set the desired extensions in allowedExtensions property of pickFiles()
      // Set type property of pickFiles() to custom to set desired extensions
      FilePickerResult? result =
          await FilePicker.platform.pickFiles(allowedExtensions: extensions,type: FileType.custom);
      
      // Check the result
      if (result != null) {

        // If not null, Convert the list of picked file paths to list of files and store it in 'files' variable
        // Store the list of files in 'files' variable
        List<File> files = result.paths.map((path) => File(path ?? '')).toList();

        // Return the first file in 'files'
        return ServiceResult(statusCode: ServiceStatusCode.OK, content: files.first);
      } else {

        // Return empty list
        return ServiceResult(statusCode: ServiceStatusCode.SystemException, content: null);
      }
    } catch (e) {

      // Invoke writeExceptionData()
      e.writeExceptionData();

      // Return empty list
      return ServiceResult(statusCode: ServiceStatusCode.SystemException,message: e.toString(),content: null);
    }   
  }
}
