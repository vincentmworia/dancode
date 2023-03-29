import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

class DataUsed extends StatelessWidget {
  const DataUsed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Daily Usage'),
        backgroundColor: Colors.blueAccent,
      ),
      body: AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.light,
          child: GestureDetector(
              child: Stack(children: <Widget>[
            Container(
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/dtb.jpg',
                    ),
                    fit: BoxFit.cover,
                  ),
                ))
          ]))),
    );
  }
}
