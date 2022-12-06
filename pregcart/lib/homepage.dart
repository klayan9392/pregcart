import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:pregcart/booking.dart';
import 'package:pregcart/doctor.dart';
import 'package:pregcart/myhome.dart';
import 'package:pregcart/payment.dart';
import 'package:pregcart/shoping.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var currentPossition = 0;
  var list = [
    const MyHome(),
    const Booking(),
    const Payment(),
    const Shoping(),
    const Doctor(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: GradientText(
            'pregcart',
            style: GoogleFonts.urbanist(fontSize: 40),
            colors: const [
              Color.fromARGB(255, 235, 152, 105),
              Color.fromARGB(255, 126, 190, 65),
            ],
          ),
          centerTitle: true,
          actions: [
            const Padding(
              padding: EdgeInsets.only(right: 10.0),
              child: Icon(
                Icons.search,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: PopupMenuButton(
                itemBuilder: (context) => [
                  PopupMenuItem(
                    child: IconButton(
                      onPressed: () {
                        log('settings');
                      },
                      icon: const Icon(
                        Icons.settings,
                        color: Colors.blue,
                      ),
                      tooltip: 'settings',
                    ),
                  ),
                  PopupMenuItem(
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.logout,
                        color: Colors.blue,
                      ),
                      tooltip: 'Log out',
                    ),
                  ),
                ],
                child: Row(
                  children: const [
                    Icon(Icons.person),
                  ],
                ),
              ),
            ),
          ],
        ),
        body: list[currentPossition],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.indigo,
          unselectedItemColor: Colors.blueGrey,
          currentIndex: currentPossition,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Booking'),
            BottomNavigationBarItem(icon: Icon(Icons.payment_rounded), label: 'Payment'),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_rounded), label: 'Shoping'),
            BottomNavigationBarItem(icon: Icon(Icons.medical_services_rounded), label: 'Doctor'),
          ],
          onTap: (index) {
            setState(() {
              currentPossition = index;
            });
          },
        ),
      ),
    );
  }
}
