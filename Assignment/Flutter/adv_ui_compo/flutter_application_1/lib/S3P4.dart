import 'package:flutter/material.dart';

class S3p4 extends StatelessWidget {
  const S3p4({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> chats = [
      {"sender": "Keyur", "message": "Hey, how are you?"},

      {"sender": "Rahul", "message": "Let's meet tomorrow."},

      {"sender": "Priya", "message": "Your order has been delivered."},

      {"sender": "Amit", "message": "Can you send the files?"},

      {"sender": "Neha", "message": "See you soon!"},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text("Chats"), centerTitle: true),

      body: ListView.separated(
        itemCount: chats.length,

        // Divider between chats
        separatorBuilder: (context, index) {
          return const Divider(color: Colors.grey, thickness: 0.5, height: 1);
        },

        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(child: Text(chats[index]["sender"]![0])),

            title: Text(
              chats[index]["sender"]!,

              style: const TextStyle(fontWeight: FontWeight.bold),
            ),

            subtitle: Text(chats[index]["message"]!),
          );
        },
      ),
    );
  }
}
