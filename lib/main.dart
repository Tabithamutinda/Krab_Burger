import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
    void initState() {
      // TODO: implement initState
      super.initState();
      Timer(Duration(seconds: 3), (){
         Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=>WelcomePage()));
      });
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo here
             Image.asset('assets/images/burger.png', height: 120,),
            // Text("Krab Burger"),
            SizedBox(height: 20,),
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            )
          ],
        ),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellowAccent,
        title: Text("Krab Burger"),
      ),
      body: Container(
        child: Center(
          child:Text("I love burgers"),
        ),
      ),
      
    );
  }
}

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Stack(
          children: [
            Positioned.fill(
              child: Opacity(
                opacity: 0.3,
                 child: Image.asset('assets/images/two burger.png',
              fit: BoxFit.cover,
              ),
              ),
             
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                Center(
                   child: ClipOval(
                     child: Container(
                      width: 180,
                      height: 180,
                      color: Colors.yellow,
                      
                    ),
                  ),
                ),
                  SizedBox(height: 40),
                  Text('Crusty Krab',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,

                  ),
                  ),
                  SizedBox(height: 40),
                  Text('Product made by:\nTabitha Mutinda',
                   textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  )
                  ),
                  SizedBox(height: 50),
                  FlatButton(
                    onPressed: (){},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)
                    ),
                    color: Colors.yellow,
                    padding: EdgeInsets.all(25),
                    child: Text('Sign In!',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                    ),
                    ),
                  ),
                          SizedBox(height: 50),
                  FlatButton(
                    onPressed: (){},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)
                    ),
                    color: Colors.yellow,
                    padding: EdgeInsets.all(25),
                    child: Text('Sign Up!',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                    ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      
    );
  }
}