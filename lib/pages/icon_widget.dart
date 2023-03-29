import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';



class IconWidget extends StatelessWidget {
  final IconData icon;
  final Color color;

  const IconWidget({
    Key? key,
    required this.icon,
    required this.color,
    required Future<void> Function() onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
    padding: EdgeInsets.all(6),
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: color,
    ),
    child: Icon(
      icon,
      color: Colors.white,
    ),
  );
}
