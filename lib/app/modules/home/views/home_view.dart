import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.only(
            top: MediaQuery.of(context).padding.top), //size of status bar

        /* สีพื้นหลัง */

        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.center,
            colors: [Color(0xff4e9eff), Color(0xff00204f)],
          ),
        ),
        child: Column(
          children: [
            /*========== เมนูด้านบนสุด =============*/

            Container(
              padding: EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 10),
              child: Row(
                children: [
                  /* รูปผู้ใช้งาน */

                  CircleAvatar(
                    radius: 18,
                    backgroundImage: AssetImage("images/11.png"),
                  ),

                  /* ชื่อผู้ใช้งาน */

                  SizedBox(width: 15),
                  Text(
                    "นายภาติยะ เพียรสวัสดิ์",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),

                  /* ไอคอนเฟส */

                  IconButton(
                    color: Colors.white,
                    iconSize: 20,
                    onPressed: () {},
                    icon: Icon(FontAwesomeIcons.facebook),
                  ),

                  /* ไอคอนกูเกิ้ล+ */

                  IconButton(
                    color: Colors.white,
                    iconSize: 20,
                    onPressed: () {},
                    icon: Icon(FontAwesomeIcons.googlePlus),
                  ),

                  /* ไอคอนข้อความเฟส */
                  Expanded(child: Container()),
                  IconButton(
                    color: Colors.white,
                    iconSize: 20,
                    onPressed: () {},
                    icon: Icon(FontAwesomeIcons.facebookMessenger),
                  ),
                ],
              ),
            ),

            /* ======= ชื่อหน้าจอ ========= */

            Container(
              padding: EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 10),
              child: Row(
                children: [
                  /* ไอคอนกลับ */

                  IconButton(
                    color: Colors.white,
                    iconSize: 20,
                    onPressed: () {},
                    icon: Icon(FontAwesomeIcons.angleLeft),
                  ),

                  /* ข้อความจองคิว */

                  Expanded(child: Container()),
                  Text(
                    "การจองคิว",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),

                  /* ไอคอนแจ้งเตือนคำถาม */

                  Expanded(child: Container()),
                  IconButton(
                    color: Colors.white,
                    iconSize: 20,
                    onPressed: () {},
                    icon: Icon(FontAwesomeIcons.infoCircle),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(28),
                      topRight: Radius.circular(28)),
                  color: Colors.white,
                ),
                child: ListView(
                  children: ListTile.divideTiles(context: context, tiles: [
                    /* ไอคอนจองคิวออนไลน์ */

                    Container(
                      margin: EdgeInsets.only(top: 10),
                      padding: EdgeInsets.only(
                          top: 5, bottom: 5, left: 10, right: 10),
                      child: ListTile(
                        leading: Container(
                          width: 33,
                          height: 33,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color(0xFF02a97d),
                          ),
                          child: Icon(
                            (FontAwesomeIcons.solidCheckCircle),
                            size: 20,
                            color: Colors.white,
                          ),
                        ),
                        title: Text("จองคิวออนไลน์"),
                        trailing: Icon(FontAwesomeIcons.angleRight, size: 17),
                      ),
                    ),

                    /* ไอคอนเลื่อนคิวออนไลน์ */

                    Container(
                      margin: EdgeInsets.only(top: 10),
                      padding: EdgeInsets.only(
                          top: 5, bottom: 5, left: 10, right: 10),
                      child: ListTile(
                        leading: Container(
                          width: 33,
                          height: 33,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color(0xFF1455b8),
                          ),
                          child: Icon(
                            FontAwesomeIcons.locationArrow,
                            size: 20,
                            color: Colors.white,
                          ),
                        ),
                        title: Text("เลื่อนคิวออนไลน์"),
                        trailing: Icon(FontAwesomeIcons.angleRight, size: 17),
                      ),
                    ),

                    /* ไอคอนยกเลิกคิวออนไลน์ */

                    Container(
                      margin: EdgeInsets.only(top: 10),
                      padding: EdgeInsets.only(
                          top: 5, bottom: 5, left: 10, right: 10),
                      child: ListTile(
                        leading: Container(
                          width: 33,
                          height: 33,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color(0xFFe42121),
                          ),
                          child: Icon(
                            FontAwesomeIcons.solidCalendarTimes,
                            size: 20,
                            color: Colors.white,
                          ),
                        ),
                        title: Text("ยกเลิกคิวออนไลน์"),
                        trailing: Icon(FontAwesomeIcons.angleRight, size: 17),
                      ),
                    ),

                    /* ไอคอนประวัติการจองออนไลน์ */

                    Container(
                      margin: EdgeInsets.only(top: 10),
                      padding: EdgeInsets.only(
                          top: 5, bottom: 5, left: 10, right: 10),
                      child: ListTile(
                        leading: Container(
                          width: 33,
                          height: 33,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color(0xFFff7120),
                          ),
                          child: Icon(
                            FontAwesomeIcons.solidClock,
                            size: 20,
                            color: Colors.white,
                          ),
                        ),
                        title: Text("ประวัติการจองออนไลน์"),
                        trailing: Icon(FontAwesomeIcons.angleRight, size: 17),
                      ),
                    ),
                  ]).toList(),
                ),
              ),
            ),
          ],
        ),
      ),

      /*=========== เมนูข้างล่าง ==================*/

      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Color(0xFFa8c3ec),
        selectedItemColor: Color(0xFF1455b8),
        type: BottomNavigationBarType.fixed,
        items: [
          /* เมนูหน้าหลัก */

          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.home),
            label: "หน้าหลัก",
          ),

          /* เมนูรายการ */

          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.list),
            label: "รายการ",
          ),

          /* เมนูScan */

          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.qrcode),
            label: "Scan",
          ),

          /* เมนูแจ้งเตือน */

          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.bell),
            label: "แจ้งเตือน",
          ),

          /* เมนูฉัน */

          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.user),
            label: "ฉัน",
          ),
        ],
      ),
    );
  } //build
} //HomeView
