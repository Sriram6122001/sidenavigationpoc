// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:errorlog/Pages/SideNavigation/ErrorVM.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class Errors extends StatefulWidget {
   Errors({Key? key, required extraData}) : super(key: key);


  @override
  State<Errors> createState() => _ErrorsState();
}

class _ErrorsState extends State<Errors> {
  ErrorVM _errorVM = ErrorVM();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        actions: const [],
      ),
      body: Observer(
        builder: (context) {
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
                  children: _errorVM.pages,
                ),
              ),
            ],
          );
        }
      ),
    );
  }
}
