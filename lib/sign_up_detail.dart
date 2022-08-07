import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

class sign_up_detail extends StatefulWidget {
  const sign_up_detail({Key? key}) : super(key: key);

  @override
  State<sign_up_detail> createState() => _sign_up_detailState();
}

class _sign_up_detailState extends State<sign_up_detail> {
  bool valueFirst = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                Image.asset(
                  'assets/SignUp.png',
                  width: 250,
                  height: 200,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Sign Up',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Crate an  account with  new phone number',
                  style: TextStyle(fontSize: 15),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      fillColor: Colors.blue,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      // hintText: 'Email Address',
                      label: Text('Email Address')),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      fillColor: Colors.blue,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      // hintText: 'Email Address',
                      label: Text('Name')),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      fillColor: Colors.blue,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      label: Text('Referral code')),
                ),
                SizedBox(
                  width: 20,
                ),
                CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  value: valueFirst,
                  title: Text(
                    'You Accepted Privacy Policy Licence Agreement',
                    style: TextStyle(fontSize: 12),
                  ),
                  onChanged: (value) {
                    setState(
                      () {
                        valueFirst = value!;
                      },
                    );
                  },
                ),
                // Text('You Accepted Privacy Policy Licence Agreement'),
                SizedBox(),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                    minimumSize: const Size(320, 60),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Save & Continue',
                    style: const TextStyle(fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
