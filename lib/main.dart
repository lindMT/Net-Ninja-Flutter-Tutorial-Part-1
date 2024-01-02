import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Home(),
    ));

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int money = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Business Card',
          style: TextStyle(
            color: Colors.white,
            fontSize: 36,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: Padding(
        padding: EdgeInsets.all(64.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/czeska.jpg'),
                  radius: 240.0,
                ),
              ),
              const Text(
                'NAME:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                  fontSize: 18.0,
                ),
              ),
              const Text(
                'Czeska',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 24.0,
                ),
              ),
              const SizedBox(
                height: 32.0,
              ),
              const Text(
                'MONEY:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                  fontSize: 18.0,
                ),
              ),
              Text(
                '$money',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 24.0,
                ),
              ),
              const SizedBox(
                height: 32.0,
              ),
            ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            if (money <= 0) {
              money = 100;
            } else {
              money *= 2;
            }
          });
        },
        backgroundColor: Colors.blueAccent,
        child: const Text('+'),
      ),
    );
  }
}

////////////////////////////// NOTES //////////////////////////////
// Widgets:
//     - Stateless (cannot change overtime/constant)
//     - Stateful (can change overtime/dynamic)
//
// Images:
//     - Asset
//     - Network Asset
//
// Alignment:
//     - MainAxis = width
//     - CrossAxis = height

///////////////////////////////////////////////
// BASIC TEXT AND STYLING
// child: Text(
//   'Hello World',
//   style: TextStyle(
//     fontSize: 55.0,
//     fontWeight: FontWeight.bold,
//     letterSpacing: 1.0,
//     color: Colors.black38,
//     fontFamily: 'tryLangEh',
//   ),
// ),

///////////////////////////////////////////////
// IMAGES
// Basic
// child: Image(
//   image: AssetImage('assets/czeska.jpg'),
// ),
//
// Shortcut
// child: Image.asset('assets/czeska.jpg'),
//
// Network
// child: Image.network('https://media.discordapp.net/attachments/1077604703493427202/1190340190246535278/image.png?ex=65a171b0&is=658efcb0&hm=583bf37e6310fac60e283d3d8f064051490ba4a4e203f521c05447c137130a76&=&format=webp&quality=lossless&width=751&height=1002'),

///////////////////////////////////////////////
// ICONS
// child: Icon(
//   Icons.chair_alt_outlined,
//   color: Colors.blueGrey,
//   size: 200,
// ),

////////////////
// BUTTONS
// Elevated button with single icon, label, and style
// child: ElevatedButton.icon(
//    icon: const Icon(
//      Icons.home_max,
//      color: Colors.pink,
//      size: 24.0,
//    ),
//    label: const Text('Elevated Button'),
//     onPressed: () {},
// ),
//
// Icon button
// child: IconButton(
//   onPressed: (){},
//   icon: const Icon(Icons.cabin),
//   color: Colors.blue,
// ),

////////////////
// CONTAINERS
// with padding and margins
// body: Container(
//   padding: const EdgeInsets.fromLTRB(60.0, 20, 60.0, 20.0),
//   margin: const EdgeInsets.all(20.0),
//   color: Colors.grey,
//   child: const Text('container to'),
// ),

////////////////
// ROWS and COLUMNS
// body: Column(
//     mainAxisAlignment: MainAxisAlignment.center,
//     crossAxisAlignment: CrossAxisAlignment.center,
//     children: [
//       Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           Text('This is a text child'),
//           FloatingActionButton(
//           onPressed: () {  },
//           backgroundColor: Colors.red[600],
//           child: const Text('CLICK'),
//           ),
//           Container(
//             padding: EdgeInsets.all(20.0),
//             color: Colors.cyan,
//             child: Text('this ones inside the row'),
//           ),
//         ],
//       ),
//
//       Container(
//         padding: EdgeInsets.all(30.0),
//         color: Colors.pinkAccent,
//         child: Text('two'),
//       ), // Container
//       Container(
//         padding: EdgeInsets.all(40.0),
//         color: Colors.amber,
//         child: Text('three')
//       ),
//     ],
// ),

////////////////
// EXPANDED
// children: <Widget>[
//   Expanded(
//     flex: 4,
//     child: Container(
//       color: Colors.red,
//       child: Center(
//         child: Text('This is expanded'),
//       ),
//     ),
//   ),
//   FloatingActionButton(
//     onPressed: () {},
//     backgroundColor: Colors.red[600],
//     child: const Text('CLICK'),
//   ),
//   Container(
//     padding: EdgeInsets.all(20.0),
//     color: Colors.cyan,
//     child: Text('this ones inside the row'),
//   ),
// ],
