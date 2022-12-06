import 'dart:developer';

import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.red),
      child: Scaffold(
        body: ListView(
          children: [
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(5),
                  height: 110,
                  margin: const EdgeInsets.all(10),
                  child: ListView(
                    children: [
                      Title(
                        color: Colors.black,
                        child: const Text(
                          '   Services',
                          style: TextStyle(
                            fontSize: 25,
                            // color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          TextButton(
                            onPressed: () {
                              log('cab');
                            },
                            child: const Icon(
                              Icons.car_rental,
                              size: 50,
                              color: Colors.deepPurpleAccent,
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              log('shop');
                            },
                            child: const Icon(
                              Icons.add_shopping_cart_sharp,
                              size: 50,
                              color: Colors.deepPurpleAccent,
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              log('cab');
                            },
                            child: const Icon(
                              Icons.support_agent_outlined,
                              size: 50,
                              color: Colors.deepPurpleAccent,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.black,
                  ),
                  height: 350,
                  margin: const EdgeInsets.all(10),
                ),
                Container(
                  // color: Colors.red,
                  height: 150,
                  margin: const EdgeInsets.all(5),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
