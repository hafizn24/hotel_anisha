import 'package:flutter/material.dart';
import 'screens/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hotel Reservation',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: LoginScreen(),
    );
  }
}










// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Hotel Reservation',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: const MyHomePage(title: 'Hotel Reservation'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//   final String title;
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int currentPageIndex = 0;

//   @override
//   Widget build(BuildContext context) {
//     final ThemeData theme = Theme.of(context);
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: Text(widget.title),
//       ),
//       bottomNavigationBar: NavigationBar(
//         onDestinationSelected: (int index) {
//           setState(() {
//             currentPageIndex = index;
//           });
//         },
//         indicatorColor: Colors.black38,
//         selectedIndex: currentPageIndex,
//         destinations: const <Widget>[
//           NavigationDestination(
//             icon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           NavigationDestination(
//             icon: Icon(Icons.luggage),
//             label: 'My Trips',
//           ),
//         ],
//       ),body: <Widget>[
//         const Padding(
//           padding: EdgeInsets.all(8.0),
//           child: Column(
//             children: <Widget>[
//               Card(
//                 child: ListTile(
                  
//                   leading: CircleAvatar(backgroundImage: AssetImage('./assets/4season.jpg'),),
//                   title: Text('4 Season Hotel'),
//                   subtitle: Text('4.3/5 Reviews'),
//                 ),
//               ),
//               Card(
//                 child: ListTile(
//                   leading: CircleAvatar(backgroundImage: AssetImage('./assets/hilton.png'),),
//                   title: Text('Hilton Hotel'),
//                   subtitle: Text('4.5/5 Reviews'),
//                 ),
//               ),
//             ],
//           ),
//         ),

//         Card(
//           shadowColor: Colors.transparent,
//           margin: const EdgeInsets.all(8.0),
//           child: SizedBox.expand(
//             child: Center(
//               child: Text(
//                 'No Reservation',
//                 style: theme.textTheme.titleLarge,
//               ),
//             ),
//           ),
//         ),
//       ][currentPageIndex],
//     );
//   }
// }
