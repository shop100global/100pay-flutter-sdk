// import 'package:flutter/material.dart';

// class Payment extends StatefulWidget {
//   const Payment({Key? key}) : super(key: key);

//   @override
//   State<Payment> createState() => _PaymentState();
// }

// class _PaymentState extends State<Payment> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Payment'),
//       ),
//       body: Container(
//         child: Column(
//           children: [
//             ListTile(
//               leading: CircleAvatar(),
//               title: Text('USDT'),
//               subtitle: Text('24.03222431578319'),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }


// import 'package:flutter/material.dart';
// import 'package:qr_scanner_generator/scan.dart';
// import 'package:qr_scanner_generator/generate.dart';
// import 'package:flutter/rendering.dart';

// class HomeScreen extends StatelessWidget {

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           centerTitle: true,
//           title: Text('QR Code Scanner & Generator'),
//         ),
//         body: Center(
//             child:
//               Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.stretch,
//                 children: <Widget>[
//                   Padding(
//                       padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
//                       child: RaisedButton(
//                           color: Colors.blue,
//                           textColor: Colors.white,
//                           splashColor: Colors.blueGrey,
//                           onPressed: () {
//                             Navigator.push(
//                               context,
//                               MaterialPageRoute(builder: (context) => Scan()),
//                             );
//                           },
//                           child: const Text('SCAN QR CODE')
//                       ),
//                     ),
//                    Padding(
//                       padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
//                       child: RaisedButton(
//                           color: Colors.blue,
//                           textColor: Colors.white,
//                           splashColor: Colors.blueGrey,
//                           onPressed: () {
//                             Navigator.push(
//                               context,
//                               MaterialPageRoute(builder: (context) => GenerateScreen()),
//                             );
//                           },
//                           child: const Text('GENERATE QR CODE')
//                       ),
//                     ),
//                 ],
//               )
//           ),
//         );
//   }
// }