import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:project_presensi/app/modules/home/views/widget/search_widget.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: Get.width,
          height: Get.height,
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                header(),
                sbox(0.03),
                Search(search: controller.searchText),
                sbox(0.03),
                Text(
                  "Services",
                  style: TextStyle(fontSize: 20),
                ),
                sbox(0.02),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: Get.width * 0.20,
                        constraints:
                            BoxConstraints(minHeight: Get.height * 0.1),
                        // height: Get.he,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xFFDCEDF9),
                        ),
                        child: Icon(Icons.home, size: 35),
                      ),
                      Container(
                        width: Get.width * 0.20,
                        constraints:
                            BoxConstraints(minHeight: Get.height * 0.1),
                        // height: Get.he,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xFFDCEDF9),
                        ),
                        child: Icon(Icons.home, size: 35),
                      ),
                      Container(
                        width: Get.width * 0.20,
                        constraints:
                            BoxConstraints(minHeight: Get.height * 0.1),
                        // height: Get.he,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xFFDCEDF9),
                        ),
                        child: Icon(Icons.home, size: 35),
                      ),
                      Container(
                        width: Get.width * 0.20,
                        constraints:
                            BoxConstraints(minHeight: Get.height * 0.1),
                        // height: Get.he,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xFFDCEDF9),
                        ),
                        child: Icon(Icons.home, size: 35),
                      ),
                    ],
                  ),
                ),
                sbox(0.03),
                banner(),
                sbox(0.03),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: Text(
                    "Attandence",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
                sbox(0.01),
                Container(
                  width: Get.width * 1.0,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        scrollPresensi(),
                        SizedBox(
                          width: 20,
                        ),
                        scrollPresensi(),
                        SizedBox(
                          width: 20,
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
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          controller.logout();
        },
        child: Icon(Icons.logout),
      ),
    );
  }
}

Container scrollPresensi() {
  return Container(
    padding: EdgeInsets.all(10),
    width: Get.width * 0.8,
    constraints: BoxConstraints(
      minHeight: Get.height * 0.1,
    ),
    decoration: BoxDecoration(
      color: Color(0xFF155A96),
      borderRadius: BorderRadius.circular(20),
    ),
    child: Row(
      children: <Widget>[
        Container(
          width: Get.width * 0.2,
          height: Get.height * 0.12,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color(0xFF1C6BA4),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "23",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              sbox(0.01),
              Text(
                "Tue",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: Get.width * 0.02,
        ),
        Expanded(
          child: Container(
            constraints: BoxConstraints(minHeight: Get.height * 0.1),
            // padding: EdgeInsets.symmetric(horizontal: 20),
            // color: Colors.red,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    // width: Get.width * 0.4,
                    child: Column(
                      // crossAxisAlignment: Cross,
                      children: [
                        Text(
                          "Time In",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "--:--",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    // width: Get.width * 0.4,
                    child: Column(
                      children: [
                        Text(
                          "Time Out",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "16:00",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

Widget banner() {
  return Container(
    width: Get.width * 1.0,
    constraints: BoxConstraints(minHeight: Get.height * 0.1),
    decoration: BoxDecoration(
      color: Color(0xFFDCEDF9),
      borderRadius: BorderRadius.circular(20),
    ),
    child: Row(
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.all(Get.width * 0.06),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Get The Best Service",
                  maxLines: 2,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                sbox(0.01),
                Text(
                  "Get lorem ipsum dolor sit amet",
                  maxLines: 2,
                ),
              ],
            ),
          ),
        ),
        Container(
          padding:
              EdgeInsets.fromLTRB(0, Get.width * 0.07, Get.width * 0.06, 0),
          child: Image.asset('assets/worker.png'),
        ),
      ],
    ),
  );
}

// List<Widget> menu() {
//   List<Widget> data = [];

//   data = controller.menuData
//       .map(
//         (e) => Container(
//           width: Get.width * 0.20,
//           constraints: BoxConstraints(minHeight: Get.height * 0.1),
//           // height: Get.he,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(20),
//             color: e.color,
//           ),
//           child: Icon(e.icon, size: 35),
//         ),
//       )
//       .toList();
//   return data;
// }

SizedBox sbox(size) {
  return SizedBox(
    height: Get.height * size,
  );
}

Widget header() {
  return Container(
    width: Get.width * 1.0,
    // height: Get.height * 0.1,
    constraints: BoxConstraints(minHeight: Get.height * 0.1),
    // color: Colors.red,
    child: Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Hello"),
              Text(
                "Febryan Pratama",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        SizedBox(
          width: 30,
        ),
        Image.asset('assets/profile.png')
      ],
    ),
  );
}
