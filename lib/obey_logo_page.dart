import 'package:flutter/material.dart';

class obeyLogoPage extends StatefulWidget {
  const obeyLogoPage({Key? key}) : super(key: key);

  @override
  State<obeyLogoPage> createState() => _obeyLogoPageState();
}

class _obeyLogoPageState extends State<obeyLogoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Back to Home'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(top: 150),
            child: Center(
              child: Column(
                children: [
                  Image.asset('assets/ObeyLogo.png'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
