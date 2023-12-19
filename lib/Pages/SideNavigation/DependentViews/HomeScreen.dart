// ignore_for_file: public_member_api_docs, sort_constructors_first, file_names

import 'package:errorlog/Helpers/Utilities/Utilities.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  final dynamic extraData;
  String errorText;
  bool isFocusChanged;
  Function testFunction;
  Function navigate;
  Function setErrorText;
  Function selectedIndex;
  List<Map<int, List<String>>> overallErrorList;

  HomeScreen(
      {Key? key,
      required this.extraData,
      required this.errorText,
      required this.isFocusChanged,
      required this.testFunction,
      required this.navigate,
      required this.setErrorText,
      required this.selectedIndex,
      required this.overallErrorList})
      : super(key: key);

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
        title: const Text('HomeScreen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Badge(
              label: Text("${overallErrorList.length}"),
              child: InkWell(
                onTap: () {
                  // Update the state variable to toggle the visibility of the new container

                },
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
              ),
            ),
            // Check the state variable to decide whether to show the new container
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
                cursorColor:
                    errorText == "" ? Colors.black : const Color(0xffC0C0C0),
                style: TextStyle(
                  color:
                      isFocusChanged ? const Color(0xffC0C0C0) : Colors.black,
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
                      color: errorText.isNotEmpty && controller.text.isEmpty
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
                      color: errorText.isNotEmpty && controller.text.isEmpty
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

            Padding(
              padding: const EdgeInsets.all(25),
              child: Container(
                  height: 100,
                  width: 250,
                  decoration: const BoxDecoration(
                     color: Colors.amberAccent,
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  child: ListView.builder(
                    itemCount: overallErrorList.length,
                    itemBuilder: (context, index) {
                      // Get the current map from overallErrorList
                      Map<int, List<String>> errorMap =
                          overallErrorList[index];
                      // Convert the map values to a single string
                      String mapValues = errorMap.entries
                          .map((entry) => 'Value: ${entry.value.join(', ')}')
                          .join('\n');
                      // Return a Text widget with the concatenated string
                      return InkWell(
                        onTap: () {
                          selectedIndex(selectedIndex: 1);
                        },
                        child: Text(mapValues),
                      );
                    },
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
