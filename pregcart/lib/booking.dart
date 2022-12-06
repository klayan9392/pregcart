import 'package:flutter/material.dart';

class Booking extends StatefulWidget {
  const Booking({super.key});

  @override
  State<Booking> createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 240, 170, 165),
      child: const Center(),
    );
  }
}
