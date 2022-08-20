import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            width: Get.width,
            height: Get.height,
            child: Stack(
              fit: StackFit.expand,
              children: [
                FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Container(
                    alignment: Alignment.topCenter,
                    width: Get.width,
                    height: Get.height,
                    child: Image.asset(
                      "assets/image2.png",
                      width: Get.width,
                    ),
                  ),
                ),
                Positioned(
                  width: Get.width,
                  bottom: 0,
                  child: Image.asset("assets/image1.png"),
                ),
                Container(
                  // color: Colors.red,
                  width: Get.width,
                  child: SingleChildScrollView(
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: Get.height * 0.09,
                        ),
                        Container(
                          width: Get.width * 0.5,
                          height: Get.height * 0.12,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.8),
                                blurRadius: 7,
                                offset: Offset(0, 3),
                              ),
                            ],
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Insert Your Image here"),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: Get.height * 0.01,
                          width: Get.width * 0.6,
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: Get.width * 0.75,
                          // height: Get.height * 0.4,
                          constraints:
                              BoxConstraints(minHeight: Get.height * 0.1),
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 2,
                              color: Colors.orange,
                            ),
                            borderRadius: BorderRadius.circular(29),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.8),
                                blurRadius: 1,
                                offset: Offset(0, 3),
                              )
                            ],
                          ),
                          child: Column(
                            // mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                padding: EdgeInsets.all(20),
                                child: Text(
                                  "LOGIN ACCOUNT",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              StyleTextField(
                                controller: controller.email,
                                text: "Email",
                                isObs: false,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              StyleTextField(
                                controller: controller.password,
                                text: "Password",
                                isObs: true,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                width: Get.width * 0.2,
                                height: Get.height * 0.05,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.orange,
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    // print(controller.email.text);
                                    controller.login();
                                  },
                                  child: Text(
                                    "LOG IN",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: Get.height * 0.02,
                        ),
                        Container(
                          child: Column(
                            children: [
                              Text(
                                "Don't have an account ?\nCreate account",
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class StyleTextField extends StatelessWidget {
  const StyleTextField({
    Key? key,
    required this.controller,
    required this.text,
    required this.isObs,
  }) : super(key: key);

  final TextEditingController controller;
  final String text;
  final bool isObs;

  @override
  Widget build(BuildContext context) {
    return Container(
      // alignm,
      height: Get.height * 0.05,
      padding: EdgeInsets.only(
        left: 20,
        right: 20,
        bottom: 1,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Colors.orange,
        ),
      ),
      child: TextField(
        controller: controller,
        obscureText: (isObs == true) ? true : false,
        // style: TextStyle(height: 0.1),
        decoration: InputDecoration(
          // labelText: "Email",
          hintText: text,
          // border: OutlineInputBorder(
          //   borderRadius: BorderRadius.circular(15),
          // ),
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          // contentPadding: EdgeInsets.symmetric(
          //     vertical: 20, horizontal: 15),
        ),
      ),
    );
  }
}
