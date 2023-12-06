import 'package:flutter/material.dart';

class UserAccountDrawerHeaderExample extends StatelessWidget {
  const UserAccountDrawerHeaderExample({super.key});

  @override
  Widget build(BuildContext context) {
    return UserAccountsDrawerHeader(
      onDetailsPressed: () {},
      otherAccountsPictures: List.generate(
        5,
        (index) => CircleAvatar(
          child: Text("index $index"),
        ),
      ),
      currentAccountPicture: CircleAvatar(
        backgroundImage: NetworkImage(
          "https://cdn.discordapp.com/attachments/1032886971749630033/1177515908139335760/IMG_6343.jpg?ex=657c04a5&is=65698fa5&hm=9915be0af3aec9d622273c1a69633432cdce012ce9a399840b3cee6db9eaa46c&",
        ),
      ),
      accountName: Text("John"),
      accountEmail: Text("john@gmail.com"),
    );
  }
}
