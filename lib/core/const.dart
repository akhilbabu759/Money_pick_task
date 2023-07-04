import 'package:flutter/material.dart';

const Color colorWhite = Colors.white;
const Color colorblue = Colors.blue;
const Color colorgray = Colors.grey;
const List<Icon> iconList = [
  Icon(
    Icons.document_scanner_outlined,
    color: Color.fromARGB(120, 87, 10, 221),
  ),
  Icon(
    Icons.phone_android_outlined,
    color: Color.fromARGB(120, 221, 151, 10),
  ),
  Icon(
    Icons.account_balance_outlined,
    color: Color.fromARGB(120, 10, 151, 221),
  ),
  Icon(
    Icons.workspace_premium_outlined,
    color: Color.fromARGB(120, 24, 107, 3),
  )
];
const List<Color> circularAvatarColour = [
  Color.fromARGB(120, 186, 158, 236),
  Color.fromARGB(255, 236, 232, 158),
  Color.fromARGB(255, 158, 197, 236),
  Color.fromARGB(255, 158, 236, 159)
];
List<LinearGradient> listGradaint=[const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(0, 255, 255, 255),
                Color.fromARGB(255, 186, 158, 236)
              ]),const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(0, 255, 255, 255),
                Color.fromARGB(255, 236, 232, 158)
              ]),const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(0, 255, 255, 255),
                Color.fromARGB(255, 158, 197, 236)
              ]),const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(0, 255, 255, 255),
                Color.fromARGB(255, 158, 236, 159)
              ])];
