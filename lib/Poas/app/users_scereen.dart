import 'package:flutter/material.dart';

class UsersScreen extends StatelessWidget {
  const UsersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('USERS'),
      ),

      body: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        physics: BouncingScrollPhysics(),
        itemCount: 5,
        itemBuilder: (context, index) {
          return ListTile(
            contentPadding: EdgeInsets.zero,
            leading: Icon(Icons.person),
            title: Text('Title $index'),
            subtitle: Text('subtitle'),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              size: 18,
            ),
          );
        },
      ),

      // body: ListView(
      //   padding: EdgeInsets.symmetric(horizontal: 20),
      //   scrollDirection: Axis.vertical,
      //   physics: BouncingScrollPhysics(),
      //   children: [
      //     ListTile(
      //       contentPadding: EdgeInsets.zero,
      //       leading: Icon(Icons.person),
      //       title: Text('Title'),
      //       subtitle: Text('subtitle'),
      //       trailing: Icon(
      //         Icons.arrow_forward_ios,
      //         size: 18,
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}
