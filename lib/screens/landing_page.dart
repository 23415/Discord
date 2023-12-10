import 'package:discord/screens/register_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: const Color.fromRGBO(40, 40, 40, 0.8),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Spacer(flex: 1,),
              Container(
                height: 150,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/icons8-discord-50.png"),
                    SizedBox(width: 20,),
                    Text("Discord",
                    style: GoogleFonts.nunitoSans(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                  ],
                )
              ),
              Spacer(),
              Container(
                width: double.infinity,
                height: 400,
                child: Image.asset("assets/images/landingpicture.png"),
              ),
              Spacer(),
              Text("Welcome to Discord",
                style: GoogleFonts.nunitoSans(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              Text("Join over 100 million people who use Discord to\n           "
                  "talk with communities and friends",
                style: GoogleFonts.nunitoSans(
                  fontSize: 12,
                  color: Colors.grey.shade600,
                  fontWeight: FontWeight.normal,
                ),
              ),
              Spacer(),
              Container(
                  width: double.infinity,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8)
                  ),
                  child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: Colors.deepPurple
                  ),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterPage()));
                  }, child: Text('Register'),),),
              Spacer(),
              Container(
                  width: double.infinity,
                  height: 40,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                          backgroundColor: Color.fromRGBO(
                              91, 91, 91, 0.26666666666666666)
                      ),
                      onPressed: (){}, child: Text('Log In'))),
              Spacer(),
            ],
          ),
        )
    );
  }
}
