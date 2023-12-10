import 'dart:core';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool isPhoneClicked = true;
  bool isEmailClicked = false;
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(40, 40, 40, 0.8),
        elevation: 0,
      ),
      backgroundColor: const Color.fromRGBO(40, 40, 40, 0.8),
      body:  Column(
        children: [
          // Spacer(),
          SizedBox(height: 30,),
          Text("Enter phone or email",
          style: GoogleFonts.nunitoSans(
            fontSize: 25,
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),
          ),
          // Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              Container(
                  width: 180,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: isPhoneClicked? const Color.fromRGBO(
                            91, 91, 91, 0.3) :
                        const Color.fromRGBO(
                            42, 42, 42, 0.3)
                      ),
                      onPressed: (){
                        setState(() {
                          isPhoneClicked = true;
                          isEmailClicked = false;
                        });
                      }, child: const Text('Phone'))),
              Spacer(),
              Container(
                  width: 180,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                          backgroundColor: isEmailClicked? const Color.fromRGBO(
                              91, 91, 91, 0.3) :
                          const Color.fromRGBO(
                              42, 42, 42, 0.3)
                      ),
                      onPressed: (){
                        setState(() {
                          isPhoneClicked = false;
                          isEmailClicked = true;
                        });
                      }, child: const Text('Email'))),
              Spacer(),
            ],
          ),
          // Spacer(),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(isPhoneClicked ? "Phone Number" : "Email",
                style: GoogleFonts.nunitoSans(
                color: Colors.grey
              ),),
            ),
          ),
          // Spacer(),
          if(isPhoneClicked)Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                color: Color.fromRGBO(40,40,40,0.8),
                borderRadius: BorderRadius.circular(3),
              ),
              child: TextFormField(
                controller: phoneController,
                style: TextStyle(color: Colors.white),
                decoration: const InputDecoration(
                  hintStyle: TextStyle(fontSize: 17, color: Colors.white38),
                  hintText: 'Phone Number',
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(left: 20),
                ),
              ),
            ),
          ),
          if(isEmailClicked)Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                color: Color.fromRGBO(40,40,40,0.8),
                borderRadius: BorderRadius.circular(3),
              ),
              child: TextFormField(
                controller: emailController,
                style: TextStyle(color: Colors.white),
                decoration: const InputDecoration(
                  hintStyle: TextStyle(fontSize: 17, color: Colors.white38),
                  hintText: 'Email',
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(left: 20),
                ),
              ),
            ),
          ),
          // Spacer(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                width: double.infinity,
                height: 40,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple
                    ),
                    onPressed: (){}, child: Text("Next"))),
          ),
          Spacer()
        ],
      ),
    );
  }
}
