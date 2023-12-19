// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:errorlog/Pages/SideNavigation/DependentViews/HomeScreen.dart';
import 'package:errorlog/Pages/SideNavigation/DependentViews/SecondScreen.dart';
import 'package:errorlog/Pages/SideNavigation/ErrorVM.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class Errors extends StatefulWidget {
  Errors({Key? key, required extraData}) : super(key: key);

  @override
  State<Errors> createState() => _ErrorsState();
}

class _ErrorsState extends State<Errors> {
  late ErrorVM _errorVM;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _errorVM = ErrorVM();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        actions: const [],
      ),
      body: Observer(builder: (context) {
        return Row(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width / 6,
              decoration: BoxDecoration(
                color: Colors.deepOrange,
              ),
              child: Column(
                children: [
                  SizedBox(height: 40),
                  IconButton(
                    onPressed: () {
                      _errorVM.selectedIndex = 0;
                    },
                    icon: Icon(Icons.home),
                  ),
                  SizedBox(height: 40),
                  IconButton(
                    onPressed: () {
                      _errorVM.selectedIndex = 1;
                    },
                    icon: Icon(Icons.square),
                  ),
                ],
              ),
            ),
            Expanded(
              child: IndexedStack(
                index: _errorVM.selectedIndex,
                children: [
                  HomeScreen(
                    extraData: _errorVM.selectedIndex,
                    errorText: _errorVM.errorText,
                    isFocusChanged: _errorVM.isFocusChanged,
                    testFunction: _errorVM.testFunction,
                    navigate: () {},
                    setErrorText: _errorVM.setErrorText,
                    selectedIndex: _errorVM.setCurrentIndex,
                    overallErrorList: _errorVM.overallErrorList,
                  ),
                  SecondScreen(
                    extraData: _errorVM.selectedIndex,
                    errorText: _errorVM.errorTextInSecondScreen,
                    isFocusChanged: _errorVM.isFocusChangedInSecondScreen,
                    testFunction: _errorVM.testFunctionInSecondScreen,
                    navigate: () {},
                    setErrorText: _errorVM.setErrorTextInSecondScreen,
                    selectedIndex: _errorVM.setCurrentIndex,
                    overallErrorList: _errorVM.overallErrorList,
                  ),
                ],
              ),
            ),
          ],
        );
      }),
    );
  }
}
