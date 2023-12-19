import 'package:errorlog/Pages/SideNavigation/Errors.dart';
import 'package:errorlog/Pages/SecondScreen/SecondScreen.dart';

import 'NavigationHelpers.dart';
import '../../Pages/HomeScreen/HomeScreen.dart';

enum Routes {
  HomeScreen,
  FirstScreen,
  SecondScreen,
  ThirdScreen,
  BottomNavScreen,
  Errors
}

class Pages{
  //! Data for Bottom Nav Config 
  Object? data; 
   
  //! Screen Config
   static final PageConfig homeScreenConfig = PageConfig( route: Routes.HomeScreen, build: (_) => HomeScreen(extraData: homeScreenConfig.data));

     //! Screen Config
   static final PageConfig secondScreenConfig = PageConfig( route: Routes.SecondScreen, build: (_) => SecondScreen(extraData: secondScreenConfig.data));
   
        //! Screen Config
   static final PageConfig errorScreenConfig = PageConfig( route: Routes.Errors, build: (_) => Errors(extraData: errorScreenConfig.data));

  //! Bottom Nav Config as final not as static
  //late final PageConfig bottomNavScreenConfig = PageConfig(route: Routes.BottomNavScreen, build: (_) => BottomNavigationScreen(extraData: data), 
  //  );
}
