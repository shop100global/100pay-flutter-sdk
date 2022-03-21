// import 'package:flutter/material.dart';
// import 'package:shop100_pay/Screen/home.dart';

// paymentDialog(BuildContext context,VoidCallback? onTap) {
//   showDialog(
//     useSafeArea: true,
//     context: context,
//     builder: (_) => Visibility(
//       visible: hideCons,
//       child: Card(
//         child: Container(
//           width: MediaQuery.of(context).size.width,
//           decoration: const BoxDecoration(
//             color: Colors.white,
//           ),
//           child: Center(
//             child: Column(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.all(15.0),
//                   child: Row(
//                     children: [
//                       Container(
//                         height: 40,
//                         width: 160,
//                         decoration: BoxDecoration(
//                           color: Colors.blue,
//                           borderRadius: BorderRadius.circular(5),
//                         ),
//                         child: Padding(
//                           padding: const EdgeInsets.only(left: 15),
//                           child: Row(
//                             children: const [
//                               Icon(Icons.arrow_back_ios, color: Colors.white),
//                               Text(
//                                 'BACK TO COINS',
//                                 style: TextStyle(
//                                     color: Colors.white,
//                                     fontWeight: FontWeight.bold),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                       const SizedBox(width: 120),
//                       const CircleAvatar(
//                         radius: 33,
//                         backgroundImage: NetworkImage(
//                             "https://res.cloudinary.com/estaterally/image/upload/v1644945649/coins/bnb_ihf6sq.png"),
//                       ),
//                     ],
//                   ),
//                 ),
//                 const Padding(
//                   padding: EdgeInsets.only(left: 5),
//                   child: ListTile(
//                     leading: CircleAvatar(
//                       radius: 25,
//                       backgroundImage: NetworkImage(
//                           "https://res.cloudinary.com/estaterally/image/upload/v1644945649/coins/bnb_ihf6sq.png"),
//                     ),
//                     title: Text(
//                       'USDT',
//                       style: TextStyle(fontSize: 20),
//                     ),
//                     subtitle: Text('24.03222431578319'),
//                   ),
//                 ),
//                 const SizedBox(height: 20),
//                 Padding(
//                   padding: const EdgeInsets.only(right: 146),
//                   child: Container(
//                     height: 180,
//                     width: 200,
//                     color: Colors.black,
//                   ),
//                 ),
//                 const SizedBox(height: 15),
//                 const Padding(
//                   padding: EdgeInsets.only(right: 65),
//                   child: Text(
//                       'asdasdasdasdasdasdasdasdasasasasassd\nsdfasdasdasdaasaasdasdassafaf\nasdfasdassasasfassfssd\nsdasd'),
//                 ),
    
//                 Padding(
//                   padding: const EdgeInsets.all(20.0),
//                   child: Column(
//                     children: [
//                       Container(
//                         alignment: Alignment.bottomLeft,
//                         child: const Text('Address'),
//                       ),
//                       Container(
//                         height: 55,
//                         width: MediaQuery.of(context).size.width,
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(5),
//                             border: Border.all()),
//                         child: TextFormField(
//                           decoration:
//                               const InputDecoration(border: InputBorder.none),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 // const SizedBox(height: 10),
//                 Padding(
//                   padding: const EdgeInsets.all(20.0),
//                   child: Column(
//                     children: [
//                       Container(
//                         alignment: Alignment.bottomLeft,
//                         child: const Text('Amount'),
//                       ),
//                       Container(
//                         height: 50,
//                         width: MediaQuery.of(context).size.width,
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(5),
//                             border: Border.all()),
//                         child: TextFormField(
//                           decoration:
//                               const InputDecoration(border: InputBorder.none),
//                         ),
//                       ),
//                       const SizedBox(height: 1),
//                       GestureDetector(
//                         onTap: () {
//                           Navigator.pop(context);
//                         },
//                         child: Card(
//                           child: Padding(
//                             padding: const EdgeInsets.only(left: 90),
//                             child: Row(
//                               children: const [
//                                 Icon(Icons.cancel),
//                                 Text('CANCEL PAYMENT')
//                               ],
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     ),
//   );
// }
