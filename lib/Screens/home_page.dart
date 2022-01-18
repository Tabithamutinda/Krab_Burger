import 'package:flutter/material.dart';
import 'package:krab_burger/AppStuff/app_strings.dart';
import 'package:krab_burger/AppStuff/app_color.dart';
import 'package:krab_burger/Screens/landing_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  int _selectedIndex = 0;

  static const List<Widget> _pages = <Widget>[
    Icon(
      Icons.home_filled,
      size: 150,
    ),
    Icon(
      Icons.shopping_cart,
      size: 150,
    ),
    Icon(
      Icons.person,
      size: 150,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      color:
      Color(0XFFFFDF00);
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: AppColor.yellow,
        title: Text(
          AppStrings.appBar,
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (_) => WelcomePage()));
            },
            icon: Icon(
              Icons.arrow_back_ios,
              size: 20,
              color: Colors.black,
            )),
      ),
      body: Center(
        child: _pages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        mouseCursor: SystemMouseCursors.grab,
        selectedFontSize: 20,
        selectedIconTheme: IconThemeData(color: AppColor.alternateYellow, size: 20),
        selectedItemColor: AppColor.alternateYellow,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        unselectedIconTheme: IconThemeData(
    color: AppColor.lightYellow,
  ),
  unselectedItemColor: AppColor.lightYellow,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'My Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.chat),
          //   label: 'Chats',
          // ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//          elevation: 0.0,
//         centerTitle: true,
//         backgroundColor: AppColor.yellow,
//         title: Text(AppStrings.appBar,
//         style: TextStyle(color: Colors.black),),
//          leading:
//         IconButton( onPressed: (){
//           Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=>WelcomePage()));

//         },icon:Icon(Icons.arrow_back_ios,size: 20,color: Colors.black,)),
//       ),

//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: _selectedIndex, //New
//   onTap: _onItemTapped, 

//     items: const <BottomNavigationBarItem>[ 
        
  
//       BottomNavigationBarItem(
//         icon: Icon(Icons.home,),
//         label: 'Home',
//       ),
     
//       BottomNavigationBarItem(
//         icon: Icon(Icons.shopping_bag),
//         label: 'Cart',
//       ),
//        BottomNavigationBarItem(
//         icon: Icon(Icons.person),
//         label: 'Profile',
//       ),
      
//     ],
  
//   ),
 
// );
//       body: Container(
//         child: Center(
//           child:Text(AppStrings.declare),
//         ),
    
      
//     );
//   }
// }
