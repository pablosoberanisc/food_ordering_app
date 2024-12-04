import 'package:flutter/material.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff66D67866D678),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
                "images/portada.png", 
                height: MediaQuery.of(context).size.width/1, 
                width: MediaQuery.of(context).size.width/2,
                ),
            Text(
              "Food Ordering App",
              style: TextStyle(
                color:Colors.white,  
                fontSize: 30.0, 
                fontFamily: 'Poppins'),
            ),
            SizedBox(height: 120.0,),
            Container(
              margin: EdgeInsets.only(left: 20.0, right: 20.0),
              height: 50,
              width:MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: Color(0xffFFE600), borderRadius: BorderRadius.circular(30) ),
            child: Center(
              child: Text(
                "Get A Meal",
                style: TextStyle(
                  color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.w500),
              ),
            ),
            )
          ],
        ),
      ),
    );
  }
}