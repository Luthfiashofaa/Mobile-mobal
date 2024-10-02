import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      SvgPicture.asset('web/icons/home.svg', width: 40, height: 40),
      SvgPicture.asset('web/icons/search.svg', width: 40, height: 40),
      SvgPicture.asset('web/icons/Chef.svg', width: 40, height: 40),
      SvgPicture.asset('web/icons/notification.svg', width: 40, height: 40),
      SvgPicture.asset('web/icons/user.svg', width: 40, height: 40),
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1), // Warna bayangan
              spreadRadius: 3,
              blurRadius: 50,
              offset: Offset(0, 10), // Mengatur posisi bayangan
            ),
          ],
        ),
        child: CurvedNavigationBar(
          items: items,
          buttonBackgroundColor: Color(0xFF042628),
          backgroundColor: Colors.transparent, // Latar belakang transparan
        ),
      ),
    );
  }
}
