import 'package:flutter/material.dart';


  List<Widget> buildExpansionTileChildren() => const [
        Padding(
          padding: EdgeInsets.only(left: 40),
          child: ListTile(
            leading: CircleAvatar(
              radius: 22,
              backgroundImage: NetworkImage(
                  "https://res.cloudinary.com/estaterally/image/upload/v1644945649/coins/bnb_ihf6sq.png"),
            ),
            title: Text(
              'algnorand network',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 40),
          child: ListTile(
            leading: CircleAvatar(
              radius: 22,
              backgroundImage: NetworkImage(
                  "https://res.cloudinary.com/estaterally/image/upload/v1644945649/coins/bnb_ihf6sq.png"),
            ),
            title: Text(
              'bsc network',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 40),
          child: ListTile(
            leading: CircleAvatar(
              radius: 22,
              backgroundImage: NetworkImage(
                  "https://res.cloudinary.com/estaterally/image/upload/v1644945649/coins/bnb_ihf6sq.png"),
            ),
            title: Text(
              'ethereun network',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
      ];