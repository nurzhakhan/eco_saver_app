import 'package:eco_saver_app/home_screen.dart';
import 'package:eco_saver_app/registration_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 150),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Кіру", style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600, height: 2),),
              Text("EcoSaver-ге қош келдіңіз!", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.grey,),),
              SizedBox(height: 50,),
              Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: Color.fromRGBO(0, 0, 0, 0.1), // Set the desired color for the border
                    width: 2.0, // Set the border width
                  ),),
                padding: EdgeInsets.all(8),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.person_outline_outlined, color: Colors.grey),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.all(8),
                            child: TextField(
                              onChanged: (value) {
                                // Handle onChanged event if needed
                              },
                              textAlign: TextAlign.start,
                              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
                              decoration: InputDecoration(
                                hintText: 'Почта',
                                hintStyle: TextStyle(color: Colors.grey),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Divider(height: 2,),
                    Row(
                      children: [
                        Icon(Icons.person_outline_outlined, color: Colors.grey),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.all(8),
                            child: TextField(
                              onChanged: (value) {
                                // Handle onChanged event if needed
                              },
                              textAlign: TextAlign.start,
                              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
                              decoration: InputDecoration(
                                hintText: 'Құпия сөз',
                                hintStyle: TextStyle(color: Colors.grey),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),(route) => false,
                );
              },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(152, 191, 94, 1)
                ),
                child: Container(
                  height: 56,
                  width: double.infinity,
                  child: Center(child: Text('Кіру')),
                ),),
              SizedBox(height: 30,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    color:  Color.fromRGBO(114, 114, 114, 1),
                    height: 1,
                    width: 102,
                  ),
                  Text("немесе",  style: TextStyle(fontSize: 14, color:Colors.grey),),
                  Container(
                    color:  Color.fromRGBO(114, 114, 114, 1),
                    height: 1,
                    width: 102,
                  ),
                ],
              ),
              SizedBox(height: 40,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      side: BorderSide(color:  Color.fromRGBO(0, 0, 0, 0.1),), // Border color (gray)
                    ),
                    child: Container(
                      height: 48,
                      width: 70,
                      padding: EdgeInsets.all(8),
                      child: SvgPicture.asset('assets/google_icon.svg'),
                    ),),
                  ElevatedButton(onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      side: BorderSide(color:  Color.fromRGBO(0, 0, 0, 0.1),), // Border color (gray)
                    ),
                    child: Container(
                      height: 48,
                      width: 70,
                      padding: EdgeInsets.all(8),
                      child: SvgPicture.asset('assets/facebook_icon.svg'),
                    ),),
                  ElevatedButton(onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      side: BorderSide(color:  Color.fromRGBO(114, 114, 114, 0.3),), // Border color (gray)
                    ),
                    child: Container(
                      height: 48,
                      width: 70,
                      padding: EdgeInsets.all(8),
                      child: SvgPicture.asset('assets/tik_tok_icon.svg'),
                    ),),
                ],
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: 50),
                  child: RichText(
                      textDirection: TextDirection.ltr,
                      text: TextSpan(
                        text: "Аккаунтыңыз жоқ па?",
                        style: TextStyle(fontSize: 12, color:Colors.grey),
                        children: [
                          TextSpan(text: " Тіркелу", style: TextStyle(color: Colors.blue),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => RegistrationScreen()),
                                );
                              },
                          ),
                        ],
                      )
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
