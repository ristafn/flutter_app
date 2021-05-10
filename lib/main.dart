import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());
// =============================================================================

// gradasi dengan opacity

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text("Gradient Opacity")),
            body: Center(
                child: ShaderMask(
              shaderCallback: (rectangle) {
                return LinearGradient(
                        colors: [Colors.black, Colors.transparent],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter)
                    .createShader(
                        Rect.fromLTRB(0, 0, rectangle.width, rectangle.height));
              },
              blendMode: BlendMode.dstIn,
              child: Image(
                  width: 300,
                  image: NetworkImage(
                      "https://helpx.adobe.com/content/dam/help/en/photoshop/using/convert-color-image-black-white/jcr_content/main-pars/before_and_after/image-before/Landscape-Color.jpg")),
            ))));
  }
}

class Fufu extends StatelessWidget {
  const Fufu({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Gradient with Opacity")),
        body: Center(
          child: ShaderMask(
            shaderCallback: (rectangle) {
              return LinearGradient(
                      colors: [Colors.black, Colors.transparent],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter)
                  .createShader(
                      Rect.fromLTRB(0, 0, rectangle.width, rectangle.height));
            },
            blendMode: BlendMode.dstIn,
            child: Image(
              width: 300,
              image: NetworkImage(
                  "https://helpx.adobe.com/content/dam/help/en/photoshop/using/convert-color-image-black-white/jcr_content/main-pars/before_and_after/image-before/Landscape-Color.jpg"),
            ),
          ),
        ),
      ),
    );
  }
}

// end gradasi dengan opacity

// =============================================================================

// colorful widget

// class MyApp extends StatelessWidget {
//   const MyApp({Key key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("Colorful Button")),
//         body: Center(
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: <Widget>[
//               ColorfulButton(
//                 mainColor: Colors.pink,
//                 secondColor: Colors.blue,
//                 iconData: Icons.adb,
//               ),
//               ColorfulButton(
//                 mainColor: Colors.amber,
//                 secondColor: Colors.red,
//                 iconData: Icons.comment,
//               ),
//               ColorfulButton(
//                 mainColor: Colors.green,
//                 secondColor: Colors.purple,
//                 iconData: Icons.computer,
//               ),
//               ColorfulButton(
//                 mainColor: Colors.blue,
//                 secondColor: Colors.yellow,
//                 iconData: Icons.contact_phone,
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// end colorful widget

// =============================================================================

// qrcode

// class MyApp extends StatelessWidget {
//   const MyApp({Key key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         body: Center(
//           child: QrImage(
//             version: 6,
//             backgroundColor: Colors.white,
//             foregroundColor: Colors.black,
//             errorCorrectionLevel: QrErrorCorrectLevel.M,
//             padding: EdgeInsets.all(30),
//             size: 300,
//             data: "https://www.google.com",
//           ),
//         ),
//       ),
//     );
//   }
// }

// end qrcode

// =============================================================================

// tabbar

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     TabBar myTabBar = TabBar(
//       indicator: BoxDecoration(
//           color: Colors.red,
//           border: Border(top: BorderSide(color: Colors.purple, width: 5))),
//       indicatorColor: Colors.red,
//       tabs: <Widget>[
//         Tab(
//           icon: Icon(Icons.comment),
//           text: "Comments",
//         ),
//         Tab(
//           icon: Icon(Icons.computer),
//           text: "Computers",
//         ),
//       ],
//     );
//     return MaterialApp(
//       home: DefaultTabController(
//         length: 2,
//         child: Scaffold(
//           appBar: AppBar(
//               title: Text("Contoh Tabbar"),
//               bottom: PreferredSize(
//                   preferredSize: Size.fromHeight(myTabBar.preferredSize.height),
//                   child: Container(color: Colors.amber, child: myTabBar))),
//           body: TabBarView(
//             children: <Widget>[
//               Center(
//                 child: Text("Tab 1"),
//               ),
//               Center(
//                 child: Text("Tab 2"),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// tabbar

// =============================================================================

// appbar custom height

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: PreferredSize(
//           preferredSize: Size.fromHeight(200),
//           child: AppBar(
//             backgroundColor: Colors.amber,
//             flexibleSpace: Align(
//               alignment: Alignment.bottomRight,
//               child: Container(
//                 margin: EdgeInsets.all(20),
//                 child: Text(
//                   "AppBar custom height",
//                   style: TextStyle(
//                       fontSize: 20,
//                       color: Colors.white,
//                       fontWeight: FontWeight.w700),
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// end appbar custom height

// =============================================================================

// Hero dan ClipRRect

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MainPage1(),
//     );
//   }
// }
//
// class MainPage1 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.lightBlue[50],
//       appBar: AppBar(
//         backgroundColor: Colors.black,
//         title: Text(
//           "Hero Animation",
//           style: TextStyle(color: Colors.white),
//         ),
//       ),
//       body: GestureDetector(
//         onTap: () {
//           Navigator.push(context, MaterialPageRoute(builder: (context) {
//             return SecondPage1();
//           }));
//         },
//         child: Hero(
//           tag: 'pp',
//           child: ClipRRect(
//             borderRadius: BorderRadius.circular(50),
//             child: Container(
//               width: 100,
//               height: 100,
//               child: Image(
//                 fit: BoxFit.cover,
//                 image: NetworkImage(
//                     "https://i.pinimg.com/originals/75/47/d7/7547d70ae8714e715dd4e3b118898438.jpg"),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class SecondPage1 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.pink[50],
//       appBar: AppBar(
//         backgroundColor: Colors.black,
//         title: Text(
//           "Hero Animation",
//           style: TextStyle(color: Colors.white),
//         ),
//       ),
//       body: Center(
//         child: Hero(
//           tag: 'pp',
//           child: ClipRRect(
//             borderRadius: BorderRadius.circular(100),
//             child: Container(
//               width: 200,
//               height: 200,
//               child: Image(
//                 fit: BoxFit.cover,
//                 image: NetworkImage(
//                     "https://i.pinimg.com/originals/75/47/d7/7547d70ae8714e715dd4e3b118898438.jpg"),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// end Hero dan ClipRRect

// =============================================================================

// Positioned, FloatingActionButton, LoginPage

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: MainPage1(),
//     );
//   }
// }
//
// class MainPage1 extends StatelessWidget {
//   double getSmallDiameter(BuildContext context) =>
//       MediaQuery.of(context).size.width * 2 / 3;
//   double getBigDiameter(BuildContext context) =>
//       MediaQuery.of(context).size.width * 7 / 8;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xffeeeeee),
//       body: Stack(
//         children: <Widget>[
//           Positioned(
//             right: -getSmallDiameter(context) / 3,
//             top: -getSmallDiameter(context) / 3,
//             child: Container(
//               width: getSmallDiameter(context),
//               height: getSmallDiameter(context),
//               decoration: BoxDecoration(
//                   shape: BoxShape.circle,
//                   gradient: LinearGradient(
//                       colors: [Colors.pink, Color(0xffff4891)],
//                       begin: Alignment.topCenter,
//                       end: Alignment.bottomCenter)),
//             ),
//           ),
//           Positioned(
//             left: -getBigDiameter(context) / 4,
//             top: -getBigDiameter(context) / 4,
//             child: Container(
//               child: Center(
//                 child: Text(
//                   "Dribblee",
//                   style: TextStyle(fontSize: 30, color: Colors.white),
//                 ),
//               ),
//               width: getBigDiameter(context),
//               height: getBigDiameter(context),
//               decoration: BoxDecoration(
//                   shape: BoxShape.circle,
//                   gradient: LinearGradient(
//                       colors: [Color(0xffb226b2), Color(0xffff4891)],
//                       begin: Alignment.topCenter,
//                       end: Alignment.bottomCenter)),
//             ),
//           ),
//           Positioned(
//             right: -getBigDiameter(context) / 2,
//             bottom: -getBigDiameter(context) / 2,
//             child: Container(
//                 width: getBigDiameter(context),
//                 height: getBigDiameter(context),
//                 decoration: BoxDecoration(
//                     shape: BoxShape.circle, color: Color(0xfff3e9ee))),
//           ),
//           Align(
//             alignment: Alignment.bottomCenter,
//             child: ListView(
//               children: <Widget>[
//                 Container(
//                   decoration: BoxDecoration(
//                       color: Colors.white,
//                       border: Border.all(color: Colors.grey),
//                       borderRadius: BorderRadius.circular(5)),
//                   margin: EdgeInsets.fromLTRB(20, 300, 20, 10),
//                   padding: EdgeInsets.fromLTRB(10, 0, 10, 25),
//                   child: Column(
//                     children: <Widget>[
//                       TextField(
//                         decoration: InputDecoration(
//                             icon: Icon(Icons.email, color: Color(0xffff4891)),
//                             focusedBorder: UnderlineInputBorder(
//                                 borderSide:
//                                     BorderSide(color: Color(0xffff48491))),
//                             labelText: "Email: ",
//                             labelStyle: TextStyle(color: Color(0xffff48491))),
//                       ),
//                       TextField(
//                         obscureText: true,
//                         decoration: InputDecoration(
//                             icon: Icon(Icons.vpn_key, color: Color(0xffff4891)),
//                             focusedBorder: UnderlineInputBorder(
//                                 borderSide:
//                                     BorderSide(color: Color(0xffff48491))),
//                             labelText: "Password: ",
//                             labelStyle: TextStyle(color: Color(0xffff48491))),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Align(
//                     alignment: Alignment.centerRight,
//                     child: Container(
//                       margin: EdgeInsets.fromLTRB(0, 0, 20, 20),
//                       child: Text(
//                         "Forgot Password?",
//                         style: TextStyle(color: Color(0xffff48491)),
//                       ),
//                     )),
//                 Container(
//                   margin: EdgeInsets.fromLTRB(20, 0, 20, 30),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: <Widget>[
//                       Material(
//                         elevation: 3,
//                         borderRadius: BorderRadius.circular(20),
//                         child: SizedBox(
//                           width: MediaQuery.of(context).size.width * 0.5,
//                           height: 40,
//                           child: Container(
//                             child: Material(
//                               borderRadius: BorderRadius.circular(20),
//                               color: Colors.transparent,
//                               child: InkWell(
//                                 borderRadius: BorderRadius.circular(20),
//                                 splashColor: Colors.amber,
//                                 onTap: () {},
//                                 child: Center(
//                                   child: Text(
//                                     "Sign In",
//                                     style: TextStyle(
//                                         color: Colors.white,
//                                         fontWeight: FontWeight.w700),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                             decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(20),
//                                 gradient: LinearGradient(
//                                     colors: [
//                                       Color(0xffb226b2),
//                                       Color(0xffff4891),
//                                     ],
//                                     begin: Alignment.topCenter,
//                                     end: Alignment.bottomCenter)),
//                           ),
//                         ),
//                       ),
//                       FloatingActionButton(
//                         onPressed: () {},
//                         mini: true,
//                         elevation: 0,
//                         child: Center(
//                             child: Text(
//                           "Facebook",
//                           style: TextStyle(fontSize: 10),
//                         )),
//                       ),
//                       FloatingActionButton(
//                         onPressed: () {},
//                         mini: true,
//                         elevation: 0,
//                         child: Center(
//                             child: Text(
//                           "Twitter",
//                           style: TextStyle(fontSize: 10),
//                         )),
//                       )
//                     ],
//                   ),
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: <Widget>[
//                     Text(
//                       "Dont have an account?",
//                       style: TextStyle(
//                           fontSize: 11,
//                           color: Colors.grey,
//                           fontWeight: FontWeight.w500),
//                     ),
//                     Text(
//                       "Sign Up",
//                       style: TextStyle(
//                           fontSize: 11,
//                           color: Color(0xffff48491),
//                           fontWeight: FontWeight.w500),
//                     ),
//                   ],
//                 )
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

// end Positioned, FloatingActionButton, LoginPage

// =============================================================================

// custome card

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MainPage1(),
//     );
//   }
// }
//
// class MainPage1 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           "Custom Card Example",
//           style: TextStyle(color: Colors.white),
//         ),
//         backgroundColor: Colors.red[900],
//       ),
//       body: Stack(
//         children: <Widget>[
//           Container(
//             decoration: BoxDecoration(
//                 gradient: LinearGradient(
//                     colors: [Color(0xfffe5788), Color(0xfff56d5d)],
//                     begin: Alignment.topCenter,
//                     end: Alignment.bottomCenter)),
//           ),
//           Center(
//             child: SizedBox(
//               width: MediaQuery.of(context).size.width * 0.8,
//               height: MediaQuery.of(context).size.height * 0.7,
//               child: Card(
//                 elevation: 3,
//                 child: Stack(
//                   children: <Widget>[
//                     Opacity(
//                       opacity: 0.7,
//                       child: Container(
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(4),
//                         ),
//                       ),
//                     ),
//                     Container(
//                       height: MediaQuery.of(context).size.height * 0.35,
//                       decoration: BoxDecoration(
//                           borderRadius: BorderRadius.only(
//                               topLeft: Radius.circular(4),
//                               topRight: Radius.circular(4)),
//                           image: DecorationImage(
//                               image: NetworkImage(
//                                   "http://rsjlawang.com/assets/images/lightbox/image-3.jpg"),
//                               fit: BoxFit.cover)),
//                     ),
//                     Container(
//                       margin: EdgeInsets.fromLTRB(
//                           20,
//                           50 + MediaQuery.of(context).size.height * 0.35,
//                           20,
//                           20),
//                       child: Center(
//                         child: Column(
//                           children: <Widget>[
//                             Text(
//                               "Beautiful London Bridge",
//                               maxLines: 2,
//                               textAlign: TextAlign.center,
//                               style: TextStyle(
//                                   color: Color(0xfff56d5d), fontSize: 25),
//                             ),
//                             Container(
//                               margin: EdgeInsets.fromLTRB(0, 20, 0, 15),
//                               child: Row(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 children: <Widget>[
//                                   Text(
//                                     "Posted on ",
//                                     style: TextStyle(
//                                         color: Colors.grey, fontSize: 12),
//                                   ),
//                                   Text(
//                                     "June 18, 2020",
//                                     style: TextStyle(
//                                         color: Color(0xfff56d5d), fontSize: 12),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                             Row(
//                               children: <Widget>[
//                                 Spacer(
//                                   flex: 10,
//                                 ),
//                                 Icon(
//                                   Icons.thumb_up,
//                                   size: 18,
//                                   color: Colors.grey,
//                                 ),
//                                 Spacer(
//                                   flex: 1,
//                                 ),
//                                 Text(
//                                   "99",
//                                   style: TextStyle(color: Colors.grey),
//                                 ),
//                                 Spacer(
//                                   flex: 5,
//                                 ),
//                                 Icon(
//                                   Icons.comment,
//                                   size: 18,
//                                   color: Colors.grey,
//                                 ),
//                                 Spacer(
//                                   flex: 1,
//                                 ),
//                                 Text(
//                                   "888",
//                                   style: TextStyle(color: Colors.grey),
//                                 ),
//                                 Spacer(
//                                   flex: 10,
//                                 )
//                               ],
//                             )
//                           ],
//                         ),
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

// custome card

// =============================================================================

// inkwell

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Make a Button"),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: <Widget>[
//               RaisedButton(
//                 color: Colors.amber,
//                 child: Text("Raised Button"),
//                 shape: StadiumBorder(),
//                 onPressed: () {},
//               ),
//               Material(
//                 elevation: 2,
//                 borderRadius: BorderRadius.circular(20),
//                 child: Container(
//                   width: 150,
//                   height: 40,
//                   decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(20),
//                       gradient: LinearGradient(
//                           colors: [Colors.purple, Colors.pink],
//                           begin: Alignment.topCenter,
//                           end: Alignment.bottomCenter)),
//                   child: Material(
//                     borderRadius: BorderRadius.circular(20),
//                     color: Colors.transparent,
//                     child: InkWell(
//                       splashColor: Colors.amber,
//                       borderRadius: BorderRadius.circular(20),
//                       onTap: () {},
//                       child: Center(
//                           child: Text(
//                         "My Button",
//                         style: TextStyle(
//                             color: Colors.white, fontWeight: FontWeight.w600),
//                       )),
//                     ),
//                   ),
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// end inkwell

// =============================================================================

// mediaquery

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MainPage1(),
//     );
//   }
// }
//
// class MainPage1 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text("Media Query"),
//         ),
//         body: (MediaQuery.of(context).orientation == Orientation.portrait)
//             ? Column(
//                 children: generateContainer(),
//               )
//             : Row(
//                 children: generateContainer(),
//               ));
//   }
//
//   List<Widget> generateContainer() {
//     return <Widget>[
//       Container(
//         color: Colors.red,
//         width: 100,
//         height: 100,
//       ),
//       Container(
//         color: Colors.amber,
//         width: 100,
//         height: 100,
//       ),
//       Container(
//         color: Colors.blue,
//         width: 100,
//         height: 100,
//       ),
//     ];
//   }
// }

// end mediaquery

// =============================================================================
// text field & text field decoration

// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   TextEditingController controller = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Text Field"),
//         ),
//         body: Container(
//           margin: EdgeInsets.all(20),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: <Widget>[
//               TextField(
//                 decoration: InputDecoration(
//                     fillColor: Colors.lightBlue[50],
//                     filled: true,
//                     icon: Icon(Icons.adb),
//                     suffix: Container(
//                       width: 5,
//                       height: 5,
//                       color: Colors.red,
//                     ),
//                     prefixIcon: Icon(Icons.person),
//                     prefixText: "Name : ",
//                     prefixStyle: TextStyle(color: Colors.blue),
//                     labelText: "Nama Lengkap",
//                     hintText: "Nama lengkapnya",
//                     hintStyle: TextStyle(fontSize: 12, color: Colors.black26),
//                     border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(20))),
//                 maxLength: 5,
//                 onChanged: (value) {
//                   setState(() {});
//                 },
//                 controller: controller,
//               ),
//               Text(controller.text)
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// end text field & text field decoration

// =============================================================================

// Card

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         backgroundColor: Colors.green,
//         body: Container(
//           margin: EdgeInsets.all(10),
//           child: ListView(
//             children: <Widget>[
//               buildCard(Icons.account_box, "Account Box"),
//               buildCard(Icons.adb, "Serangga")
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   Card buildCard(IconData iconData, String text) {
//     return Card(
//       elevation: 5,
//       child: Row(
//         children: <Widget>[
//           Container(
//               margin: EdgeInsets.all(5),
//               child: Icon(
//                 iconData,
//                 color: Colors.green,
//               )),
//           Text(text)
//         ],
//       ),
//     );
//   }
// }

// end Card

// =============================================================================

// app bar gradasi dengan corak (AppBar, IconButton, Icon)

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           leading: Icon(
//             Icons.adb,
//             color: Colors.white,
//           ),
//           title: Text("AppBar Example", style: TextStyle(color: Colors.white)),
//           actions: <Widget>[
//             IconButton(icon: Icon(Icons.settings), onPressed: () {}),
//             IconButton(icon: Icon(Icons.exit_to_app), onPressed: () {})
//           ],
//           flexibleSpace: Container(
//             decoration: BoxDecoration(
//               gradient: LinearGradient(
//                   colors: [Color(0xff0096ff), Color(0xff610f2)],
//                   begin: FractionalOffset.topLeft,
//                   end: FractionalOffset.bottomRight),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// end app bar gradasi dengan corak (AppBar, IconButton, Icon)

// =============================================================================

// navigasi multi page/screen

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: LoginPage(),
//     );
//   }
// }

// end navigasi multi page/screen

// =============================================================================

// Draggable, DragTarget, SizedBox, Material

// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   Color color1 = Colors.red;
//   Color color2 = Colors.amber;
//   Color targetColor;
//   bool isAccepted = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Draggable, DragTarget, SizedBox, Material"),
//         ),
//         body: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: <Widget>[
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: <Widget>[
//                 Draggable<Color>(
//                   data: color1,
//                   child: SizedBox(
//                     width: 50,
//                     height: 50,
//                     child: Material(
//                       color: color1,
//                       shape: StadiumBorder(),
//                       elevation: 0,
//                     ),
//                   ),
//                   childWhenDragging: SizedBox(
//                     width: 50,
//                     height: 50,
//                     child: Material(
//                       color: Colors.grey,
//                       shape: StadiumBorder(),
//                       elevation: 3,
//                     ),
//                   ),
//                   feedback: SizedBox(
//                     width: 50,
//                     height: 50,
//                     child: Material(
//                       color: color1.withOpacity(0.7),
//                       shape: StadiumBorder(),
//                       elevation: 3,
//                     ),
//                   ),
//                 ),
//                 Draggable<Color>(
//                   data: color2,
//                   child: SizedBox(
//                     width: 50,
//                     height: 50,
//                     child: Material(
//                       color: color2,
//                       shape: StadiumBorder(),
//                       elevation: 0,
//                     ),
//                   ),
//                   childWhenDragging: SizedBox(
//                     width: 50,
//                     height: 50,
//                     child: Material(
//                       color: Colors.grey,
//                       shape: StadiumBorder(),
//                       elevation: 3,
//                     ),
//                   ),
//                   feedback: SizedBox(
//                     width: 50,
//                     height: 50,
//                     child: Material(
//                       color: color2.withOpacity(0.7),
//                       shape: StadiumBorder(),
//                       elevation: 3,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             DragTarget<Color>(
//               onWillAccept: (value) => true,
//               onAccept: (value) {
//                 isAccepted = true;
//                 targetColor = value;
//               },
//               builder: (context, candidates, rejected) {
//                 return (isAccepted)
//                     ? SizedBox(
//                         width: 100,
//                         height: 100,
//                         child: Material(
//                             color: targetColor, shape: StadiumBorder()),
//                       )
//                     : SizedBox(
//                         width: 100,
//                         height: 100,
//                         child: Material(
//                             color: Colors.black12, shape: StadiumBorder()),
//                       );
//               },
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

// end Draggable, DragTarget, SizedBox, Material

// =============================================================================
// spacer widget

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Spacer"),
//         ),
//         body: Center(
//           child: Row(
//             children: <Widget>[
//               Spacer(
//                 flex: 1,
//               ),
//               Container(
//                 width: 80,
//                 height: 80,
//                 color: Colors.red,
//               ),
//               Spacer(
//                 flex: 2,
//               ),
//               Container(
//                 width: 80,
//                 height: 80,
//                 color: Colors.amber,
//               ),
//               Spacer(
//                 flex: 3,
//               ),
//               Container(
//                 width: 80,
//                 height: 80,
//                 color: Colors.blue,
//               ),
//               Spacer(
//                 flex: 2,
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// end spacer widget
// =============================================================================

// image widget

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         home: Scaffold(
//       appBar: AppBar(
//         title: Text("Image Widget"),
//       ),
//       body: Center(
//         child: Container(
//           color: Colors.black,
//           width: 200,
//           height: 200,
//           padding: EdgeInsets.all(3),
//           child: Image(
//             image: NetworkImage(
//                 "https://interactive-examples.mdn.mozilla.net/media/cc0-images/grapefruit-slice-332-332.jpg"),
//             fit: BoxFit.contain,
//             repeat: ImageRepeat.repeat,
//           ),
//         ),
//       ),
//     ));
//   }
// }

// end image widget

// =============================================================================

// stack & align widget

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Stack dan Align Widget"),
//         ),
//         body: Stack(
//           children: <Widget>[
//             Column(
//               children: <Widget>[
//                 Flexible(
//                   flex: 1,
//                   child: Row(
//                     children: <Widget>[
//                       Flexible(
//                         flex: 1,
//                         child: Container(
//                           color: Colors.white,
//                         ),
//                       ),
//                       Flexible(
//                         flex: 1,
//                         child: Container(
//                           color: Colors.black12,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Flexible(
//                   flex: 1,
//                   child: Row(
//                     children: <Widget>[
//                       Flexible(
//                         flex: 1,
//                         child: Container(
//                           color: Colors.black12,
//                         ),
//                       ),
//                       Flexible(
//                         flex: 1,
//                         child: Container(
//                           color: Colors.white,
//                         ),
//                       ),
//                     ],
//                   ),
//                 )
//               ],
//             ),
//             ListView(
//               children: <Widget>[
//                 Column(
//                   children: <Widget>[
//                     Container(
//                       margin: EdgeInsets.all(10),
//                       child: Text(
//                         "Ini adalah text yang ada dilapisan tengah dari Stack",
//                         style: TextStyle(fontSize: 30),
//                       ),
//                     ),
//                     Container(
//                       margin: EdgeInsets.all(10),
//                       child: Text(
//                         "Ini adalah text yang ada dilapisan tengah dari Stack",
//                         style: TextStyle(fontSize: 30),
//                       ),
//                     ),
//                     Container(
//                       margin: EdgeInsets.all(10),
//                       child: Text(
//                         "Ini adalah text yang ada dilapisan tengah dari Stack",
//                         style: TextStyle(fontSize: 30),
//                       ),
//                     ),
//                     Container(
//                       margin: EdgeInsets.all(10),
//                       child: Text(
//                         "Ini adalah text yang ada dilapisan tengah dari Stack",
//                         style: TextStyle(fontSize: 30),
//                       ),
//                     ),
//                     Container(
//                       margin: EdgeInsets.all(10),
//                       child: Text(
//                         "Ini adalah text yang ada dilapisan tengah dari Stack",
//                         style: TextStyle(fontSize: 30),
//                       ),
//                     ),
//                     Container(
//                       margin: EdgeInsets.all(10),
//                       child: Text(
//                         "Ini adalah text yang ada dilapisan tengah dari Stack",
//                         style: TextStyle(fontSize: 30),
//                       ),
//                     ),
//                     Container(
//                       margin: EdgeInsets.all(10),
//                       child: Text(
//                         "Ini adalah text yang ada dilapisan tengah dari Stack",
//                         style: TextStyle(fontSize: 30),
//                       ),
//                     ),
//                     Container(
//                       margin: EdgeInsets.all(10),
//                       child: Text(
//                         "Ini adalah text yang ada dilapisan tengah dari Stack",
//                         style: TextStyle(fontSize: 30),
//                       ),
//                     ),
//                   ],
//                 )
//               ],
//             ),
//             Align(
//               alignment: Alignment(0.9, 0.95),
//               child: ElevatedButton(
//                 child: Text("My Button"),
//                 onPressed: () {},
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

// end stack & align widget

// =============================================================================

// flexible widget
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Flexible Layout"),
//         ),
//         body: Column(
//           children: <Widget>[
//             Flexible(
//               flex: 1,
//               child: Row(
//                 children: <Widget>[
//                   Flexible(
//                       flex: 1,
//                       child: Container(
//                         margin: EdgeInsets.all(5),
//                         color: Colors.red,
//                       )),
//                   Flexible(
//                       flex: 1,
//                       child: Container(
//                         margin: EdgeInsets.all(5),
//                         color: Colors.green,
//                       )),
//                   Flexible(
//                       flex: 1,
//                       child: Container(
//                         margin: EdgeInsets.all(5),
//                         color: Colors.purple,
//                       )),
//                 ],
//               ),
//             ),
//             Flexible(
//                 flex: 2,
//                 child: Container(
//                   margin: EdgeInsets.all(5),
//                   color: Colors.amber,
//                 )),
//             Flexible(
//                 flex: 1,
//                 child:
//                     Container(margin: EdgeInsets.all(5), color: Colors.blue)),
//           ],
//         ),
//       ),
//     );
//   }
// }

// end flexible widget
// =============================================================================

// animated & gesture detector

// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   Random random = Random();
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Animated & GestureDetector"),
//         ),
//         body: Center(
//           child: GestureDetector(
//             onTap: () {
//               setState(() {});
//             },
//             child: AnimatedContainer(
//               color: Color.fromARGB(255, random.nextInt(256),
//                   random.nextInt(255), random.nextInt(255)),
//               duration: Duration(seconds: 1),
//               width: 50.0 + random.nextInt(101),
//               height: 50.0 + random.nextInt(101),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// end animated & gesture detector

// =============================================================================

// text style

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Latihan TextStyle"),
//         ),
//         body: Center(
//           child: Text(
//             "Ini adalah Text",
//             style: TextStyle(
//                 fontFamily: "BellaYears",
//                 fontSize: 35,
//                 decoration: TextDecoration.overline,
//                 decorationColor: Colors.red,
//                 decorationThickness: 5,
//                 decorationStyle: TextDecorationStyle.wavy),
//           ),
//         ),
//       ),
//     );
//   }
// }

// end text style
// =============================================================================

// list dan listview

// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   List<Widget> widgets = [];
//   int counter = 1;
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("List dan ListView"),
//         ),
//         body: ListView(children: <Widget>[
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: <Widget>[
//               ElevatedButton(
//                 child: Text("Tambah Data"),
//                 onPressed: () {
//                   setState(() {
//                     widgets.add(Text(
//                       "Data ke-" + counter.toString(),
//                       style: TextStyle(fontSize: 35),
//                     ));
//                     counter++;
//                   });
//                 },
//               ),
//               ElevatedButton(
//                   child: Text("Hapus Data"),
//                   onPressed: () {
//                     setState(() {
//                       widgets.removeLast();
//                       counter--;
//                     });
//                   })
//             ],
//           ),
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: widgets,
//           )
//         ]),
//       ),
//     );
//   }
// }

// end list dan listview

// =============================================================================

// anonymous method

// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   String message = "Ini adalah text";
//
//   void batal() {
//     setState(() {
//       message = "Ini adalah text";
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Anonymous Method'),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               Text(message),
//               ElevatedButton(
//                 child: Text("Tekan Saya"),
//                 onPressed: () {
//                   setState(() {
//                     message = "Tombol sudah ditekan";
//                   });
//                 },
//               ),
//               ElevatedButton(
//                 child: Text("Batal"),
//                 onPressed: batal,
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// end anonymous method

// =============================================================================

// stateful widget

// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   int number = 0;
//
//   void tekanTombol() {
//     setState(() {
//       number += 1;
//     });
//   }
//
//   void hapus() {
//     setState(() {
//       number = 0;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Statefull widget demo'),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               Text(
//                 number.toString(),
//                 style: TextStyle(fontSize: 10 + number.toDouble()),
//               ),
//               ElevatedButton(
//                 child: Text('Tambah Bilangan'),
//                 onPressed: tekanTombol,
//               ),
//               ElevatedButton(
//                 child: Text('Hapus'),
//                 onPressed: hapus,
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// end stateful widget

// =============================================================================

// Container Widget

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Latihan Container'),
//         ),
//         body: Container(
//             color: Colors.red,
//             margin: EdgeInsets.fromLTRB(10, 15, 20, 25),
//             padding: EdgeInsets.only(bottom: 20, top: 20),
//             child: Container(
//               margin: EdgeInsets.all(10),
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(20),
//                   gradient: LinearGradient(
//                       begin: Alignment.topLeft,
//                       end: Alignment.bottomRight,
//                       colors: <Color>[Colors.amber, Colors.blue])),
//             )),
//       ),
//     );
//   }
// }

//end Container Widget

// =============================================================================

// Row dan Column Widget

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Latihan Row dan Column'),
//         ),
//         body: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             Text('Text1'),
//             Text('Text2'),
//             Text('Text3'),
//             Row(
//               children: <Widget>[Text('text4'), Text('text5'), Text('text6')],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
// end Row dan Column Widget

// =============================================================================

// Text Widget

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         debugShowCheckedModeBanner: false,
//         home: Scaffold(
//           appBar: AppBar(
//             title: Text('Aplikasi Hello World'),
//           ),
//           body: Center(
//             child: Container(
//               color: Colors.lightBlue,
//               width: 150,
//               height: 50,
//               child: Text(
//                 "Saya sedang melatih kemampuan flutter saya",
//                 style: TextStyle(
//                     color: Colors.white,
//                     fontStyle: FontStyle.italic,
//                     fontWeight: FontWeight.w700,
//                     fontSize: 20),
//               ),
//             ),
//           ),
//         ));
//   }
// }

// end Text Widget
