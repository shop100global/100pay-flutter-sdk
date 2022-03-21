// import 'package:flutter/material.dart';

// import 'list_till_view.dart';



//   ExpansionTile _buildExpansionTile(int index) {
//     final GlobalKey expansionTileKey = GlobalKey();
//     double previousOffset = 0.0;

//     return ExpansionTile(
//       key: expansionTileKey,
//       onExpansionChanged: (isExpanded) {
//         if (isExpanded) previousOffset = _scrollController.offset;
//         _scrollToSelectedContent(
//             isExpanded, previousOffset, index, expansionTileKey);
//       },
//       leading: const CircleAvatar(
//         radius: 25,
//         backgroundImage: NetworkImage(
//             "https://res.cloudinary.com/estaterally/image/upload/v1644945649/coins/bnb_ihf6sq.png"),
//       ),
//       title: const Text(
//         'Tether Usdt',
//         style: TextStyle(fontSize: 20),
//       ),
//       children: buildExpansionTileChildren(),
//     );
//   }