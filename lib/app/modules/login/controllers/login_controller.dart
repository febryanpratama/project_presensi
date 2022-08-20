import 'dart:convert';
import 'package:get_storage/get_storage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:project_presensi/app/routes/app_pages.dart';

class LoginController extends GetxController {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  final box = GetStorage();
  void login() async {
    if (email.text.isEmpty && password.text.isEmpty) {
      Get.snackbar("Error", "Email dan Password Wajib Diiisi");
    }
    var url = Uri.parse('https://presensi.febryancaesarpratama.com/api/login');
    var response = await http.post(url, body: {
      'email': email.text,
      'password': password.text,
    });
    var data = jsonDecode(response.body);
    if (data['original']['meta']['code'] == 200) {
      // print(data['original']['data']['user']);
      box.write("dataRemember", {
        'email': data['original']['data']['user']['email'],
        'name': data['original']['data']['user']['name'],
        'token': data['original']['data']['token'],
      });
      Get.offAllNamed(Routes.HOME);
    } else {
      Get.snackbar('Error', data['original']['meta']['message']);
    }
  }

  void logout() {
    box.remove("dataRemember");
    Get.offAllNamed(Routes.LOGIN);
  }
}
