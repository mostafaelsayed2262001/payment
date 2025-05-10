import 'package:flutter/material.dart';

Widget doneIconWidget() {
  return Container(
      margin: EdgeInsets.symmetric(vertical: 30),
      height: 150,
      width: 150,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.green,
      ),
      alignment: AlignmentDirectional.topCenter,
      child: Center(
        child: Icon(
          Icons.done_outline_rounded,
          color: Colors.white,
          size: 120,
        ),
      ));
}
