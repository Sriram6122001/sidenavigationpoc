// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';


// ignore: must_be_immutable
class SecondScreen extends StatelessWidget {
  final dynamic extraData;
  String errorText;
  bool isFocusChanged;
  Function testFunction;
  Function navigate;
  Function setErrorText;
  Function selectedIndex;
   List<Map<int, List<String>>> overallErrorList;
  SecondScreen({Key? key,
      required this.extraData,
      required this.errorText,
      required this.isFocusChanged,
      required this.testFunction,
      required this.navigate,
      required this.setErrorText,
      required this.selectedIndex,
      required this.overallErrorList
  }) : super(key: key);
  TextEditingController controller = TextEditingController();
  bool showNewContainer = false;
  bool isVisible = false;

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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            SizedBox(height: responsiveHeight(3)),
            SizedBox(
              height: responsiveHeight(5.75),
              width: responsiveWidth(37),
              child: TextFormField(
                maxLength: 2048,
                onTap: () {
                  if (errorText.isNotEmpty) {
                    setErrorText(errorText: '');
                  }
                },
                controller: controller,
                cursorHeight: 25,
                cursorColor: errorText == ""
                    ? Colors.black
                    : const Color(0xffC0C0C0),
                style: TextStyle(
                  color: isFocusChanged
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
                      color: errorText.isNotEmpty &&
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
                      color: errorText.isNotEmpty &&
                              controller.text.isEmpty
                          ? const Color(0xffC90000)
                          : const Color(0xffC0C0C0),
                    ),
                  ),

                ),
                autovalidateMode: AutovalidateMode.onUserInteraction,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: responsiveHeight(1), bottom: responsiveHeight(1)),
              child: Text(
                errorText,
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
                testFunction(text: controller.text);
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
            if (showNewContainer)
              Padding(
                  padding: const EdgeInsets.all(25),
                  child: Container(
                    height: 100,
                    width: 250,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                  )),
          ],
        ),
      ),
    );
  }
}
