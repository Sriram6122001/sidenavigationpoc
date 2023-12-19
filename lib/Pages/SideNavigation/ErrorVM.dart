import 'package:errorlog/Pages/SideNavigation/ErrorModel.dart';
import 'package:errorlog/Pages/HomeScreen/HomeScreen.dart';
import 'package:errorlog/Pages/SecondScreen/SecondScreen.dart';

class ErrorVM extends ErrorModel {
  ErrorVM() {
    pages.addAll([
      HomeScreen(extraData: selectedIndex),
      SecondScreen(extraData: selectedIndex),
    ]);
  }
}
