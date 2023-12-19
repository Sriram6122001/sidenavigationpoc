// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:errorlog/Helpers/AppNavigations/NavigationHelpers.dart';
import 'package:errorlog/Helpers/AppNavigations/NavigationMixin.dart';
import 'package:errorlog/Pages/SecondScreen/SecondScreenVM.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class SecondScreen extends StatefulWidget {

const SecondScreen({Key? key, required extraData}) : super(key: key);

@override
State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  SecondScreenVM _secondScreenVM = SecondScreenVM();
    TextEditingController controller = TextEditingController();
  bool showNewContainer = false;
  bool isVisible = false;
  @override
  void initState() {
  super.initState();
  _secondScreenVM.navigationStream.stream.listen((event) {
    if(event is NavigatorPush){
      context.push(pageConfig: event.pageConfig,data: event.data);
    }
    if(event is NavigatorPop){
      context.pop();
    }
   });
  }
@override
Widget build(BuildContext context) {
    responsiveWidth(double percentage) {
      return MediaQuery.sizeOf(context).width * (percentage / 100);
    }

    responsiveHeight(double percentage) {
      return MediaQuery.sizeOf(context).height * (percentage / 100);
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('SecondScreen'),
      ),
      body: Observer(builder: (context) {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Badge(
              //   label: Text("${_secondScreenVM.listOfErrors.length}"),
              //   child: InkWell(
              //     onTap: () {
              //       // Update the state variable to toggle the visibility of the new container
              //       setState(() {
              //         showNewContainer = !showNewContainer;
              //       });
              //     },
              //     child: Container(
              //       height: 50,
              //       width: 50,
              //       decoration: const BoxDecoration(
              //         color: Colors.blue,
              //         borderRadius: BorderRadius.all(Radius.circular(10)),
              //       ),
              //     ),
              //   ),
              // ),
              // Check the state variable to decide whether to show the new container
              
              SizedBox(height: responsiveHeight(3)),
              SizedBox(
                height: responsiveHeight(5.75),
                width: responsiveWidth(37),
                child: TextFormField(
                  maxLength: 2048,
                  onTap: () {
                    if (_secondScreenVM.errorText.isNotEmpty) {
                      _secondScreenVM.setErrorText(errorText: "");
                    }
                  },
                  controller: controller,
                  cursorHeight: 25,
                  cursorColor: _secondScreenVM.errorText == ""
                      ? Colors.black
                      : const Color(0xffC0C0C0),
                  style: TextStyle(
                    color: _secondScreenVM.isFocusChanged
                        ? const Color(0xffC0C0C0)
                        : Colors.black,
                    fontSize: responsiveHeight(1.75),
                    fontWeight: FontWeight.w400,
                    fontFamily: 'SofiaProRegular',
                    textBaseline: TextBaseline.alphabetic,
                  ),
                  textCapitalization: TextCapitalization.sentences,
                  decoration: InputDecoration(
                    counterText: "",
                    errorStyle: TextStyle(
                      color: Color(0xffC90000),
                      fontSize: 14,
                      fontFamily: 'SofiaProRegular',
                      fontWeight: FontWeight.w400,
                    ),
                    contentPadding:
                        const EdgeInsets.only(top: 10, bottom: 10, left: 16),
                    errorBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xffC90000),
                      ),
                    ),
                    fillColor: Colors.white,
                    filled: true,
                    hintText: 'Enter your text',
                    hintStyle: TextStyle(
                        color: const Color(0xffC6C6C6),
                        fontSize: responsiveHeight(1.5),
                        fontWeight: FontWeight.w400,
                        fontFamily: 'SofiaProRegular'),
                    labelStyle: const TextStyle(
                      color: Color(0xff000000),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: _secondScreenVM.errorText.isNotEmpty &&
                                controller.text.isEmpty
                            ? const Color(0xffC90000)
                            : const Color(0xffC0C0C0),
                      ),
                    ),
                    focusedErrorBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xffC90000),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: _secondScreenVM.errorText.isNotEmpty &&
                                controller.text.isEmpty
                            ? const Color(0xffC90000)
                            : const Color(0xffC0C0C0),
                      ),
                    ),
                    // enabledBorder: OutlineInputBorder(
                    //   borderSide: BorderSide(
                    //     color: _secondScreenVM.errorText.isEmpty &&
                    //             controller.text.isEmpty
                    //         ? const Color(0xffC0C0C0)
                    //         : isLoading
                    //             ? const Color(0xffC0C0C0)
                    //             : const Color(0xffC90000),
                    //   ),
                    // ),
                  ),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: responsiveHeight(1), bottom: responsiveHeight(1)),
                child: Text(
                  _secondScreenVM.errorText,
                  style: TextStyle(
                      color: Color(0xffC90000),
                      fontSize: responsiveHeight(1.65),
                      fontWeight: FontWeight.w400,
                      fontFamily: 'SofiaProRegular'),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.fromLTRB(
                      responsiveWidth(1),
                      responsiveHeight(1),
                      responsiveWidth(1),
                      responsiveHeight(1)),
                  backgroundColor: const Color(0xff02353C),
                  minimumSize: Size(
                    responsiveWidth(3),
                    responsiveHeight(6),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3),
                  ),
                ),
                onPressed: () {
                  _secondScreenVM.testFunction(text: controller.text);
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "click",
                    style: TextStyle(
                        color: Color(0xffFFFFFF),
                        fontWeight: FontWeight.w400,
                        fontFamily: 'SofiaProMedium',
                        fontSize: responsiveHeight(1.75)),
                  ),
                ),
              ),
              // Center(
              //   child: Row(children: [
              //     Container(
              //       height: 50,
              //       width: 50,
              //       decoration: BoxDecoration(
              //         color: Colors.deepOrange,
              //       ),
              //     ),
              //    IconButton(onPressed: (){
              //     _secondScreenVM.pickImageFile();
              //    }
              //    , icon: Icon(Icons.add)),
                 
              //   ],),
              // ),
              if (showNewContainer)
                Padding(
                  padding: const EdgeInsets.all(25),
                  child: Container(
                      height: 100,
                      width: 250,
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.all(Radius.circular(5))),
                      // child: ListView.builder(
                      //     itemCount: 5,
                      //     itemBuilder: (BuildContext context, int index) {
                      //       return InkWell(
                      //         onTap: (){
                                
                      //         },
                      //         // child: Container(
                      //         //   child: Text(
                      //         //     _secondScreenVM.listOfErrors[index]
                      //         //   )
                      //         // ),
                      //       );
                      //     })),
                  )
                ),
            ],
          ),
        );
      }),
    );
  }
}