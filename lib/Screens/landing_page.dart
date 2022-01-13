
import 'dart:async';
import 'package:local_auth/local_auth.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:krab_burger/AppStuff/app_pics.dart';
import 'package:krab_burger/AppStuff/app_strings.dart';



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
         debugShowCheckedModeBanner: false,
      home: WelcomePage(),
    );
  }
}

// class SplashScreen extends StatefulWidget {
//   @override
//   _SplashScreenState createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> {

//   @override
//     void initState() {
//       // TODO: implement initState
//       super.initState();
//       Timer(Duration(seconds: 3), (){
//          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=>WelcomePage()));
//       });
//     }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo here
             Image.asset(AppPics.burger, height: 20,),
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
        title: Text(AppStrings.appBar),
      ),
      body: Container(
        child: Center(
          child:Text(AppStrings.declare),
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
                 child: Image.asset(AppPics.burger2,
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
                  Text(AppStrings.title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,

                  ),
                  ),
                  SizedBox(height: 40),
                  Text(AppStrings.copyright,
                   textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  )
                  ),
                  SizedBox(height: 50),
                  Padding(
                    padding:const EdgeInsets.all(20),
                  child: FlatButton(
                    onPressed: (){},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)
                    ),
                    color: Colors.yellow,
                    padding: EdgeInsets.all(25),
                    child: Text(AppStrings.signIn,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                    ),
                    ),
                  ),
                  ),
                 

                 Container(
                   margin: EdgeInsets.only(left: 20,right: 20,bottom: 20),
                   child: ClipRRect(
                     borderRadius: BorderRadius.circular(50),
                     child: Material(
                   color: Colors.transparent,
                   child: InkWell(
                     splashColor: Colors.yellow.withOpacity(0.2),
                     highlightColor: Colors.yellow.withOpacity(0.2),
                     onTap: (){},
                    child: Container(
                   padding: EdgeInsets.all(20),
                   child: Text(AppStrings.logIn,
                   textAlign: TextAlign.center,
                   style: TextStyle(
                     fontSize: 16,
                     color: Colors.yellow,
                     fontWeight: FontWeight.bold
                   ),
                   ),
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(50),
                     color: Colors.transparent,
                     border:Border.all(
                       color: Colors.yellow,
                       width: 4
                     ),

                   ),
                 )
                   ),
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