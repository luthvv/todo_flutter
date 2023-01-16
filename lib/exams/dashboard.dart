import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    List chats = [
      ["Luthfi", "Asoy", "10 juni 202020"],
      ["adhi negro", "Programmer", "4 maret 20211"],
      ["adhi negro", "Programmer", "4 maret 20211"],
      ["adhi negro", "Programmer", "4 maret 20211"],
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text(
          "Dashboard",
        ),
      ),
      body: ListView.builder(
        itemCount: 4,
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage: AssetImage('/images/moonton.png'),
              ),
              title: Text(
                "${chats[index][0]}",
              ),
              trailing: Text(
                "${chats[index][2]}",
              ),
              subtitle: Text(
                "${chats[index][1]}",
              ),
            ),
          );
        },
      ),
    );
  }
}