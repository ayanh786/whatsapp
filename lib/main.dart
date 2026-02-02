//Group 3
//22K-4376 Khubaib Ahmed Jamil
//22K-4367 Ayan Hasan
//22K-4482 Muhammad Ahmed

import 'package:flutter/material.dart';

void main() {
  runApp(const WhatsAppClone());
}

class WhatsAppClone extends StatelessWidget {
  const WhatsAppClone({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp Clone',
      theme: ThemeData(
        primaryColor: const Color(0xFF075E54),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: const Color(0xFF25D366),
        ),
      ),
      home: const WhatsAppHome(),
    );
  }
}

class WhatsAppHome extends StatelessWidget {
  const WhatsAppHome({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4, // Camera, Chats, Status, Calls
      initialIndex: 1, // Start on Chats tab
      child: Scaffold(
        appBar: AppBar(
          title: const Text('WhatsApp'),
          backgroundColor: const Color(0xFF075E54),
          actions: [
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {},
            ),
            PopupMenuButton<String>(
              onSelected: (value) {},
              itemBuilder: (context) => [
                const PopupMenuItem(value: "New Group", child: Text("New Group")),
                const PopupMenuItem(value: "Settings", child: Text("Settings")),
              ],
            ),
          ],
          bottom: const TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Tab(icon: Icon(Icons.camera_alt)),
              Tab(text: "CHATS"),
              Tab(text: "STATUS"),
              Tab(text: "CALLS"),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(child: Text("Camera Screen")),
            ChatsScreen(),
            StatusScreen(),
            CallsScreen(),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: const Color(0xFF25D366),
          child: const Icon(Icons.message, color: Colors.white),
          onPressed: () {},
        ),
      ),
    );
  }
}

// Dummy Chats Screen
class ChatsScreen extends StatelessWidget {
  const ChatsScreen({super.key});

  final List<Map<String, String>> chats = const [
    {"name": "John Doe", "message": "Hey! How are you?", "time": "12:00"},
    {"name": "Jane Smith", "message": "Let's meet tomorrow.", "time": "11:45"},
    {"name": "Alex", "message": "Check this out!", "time": "10:30"},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: chats.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: const CircleAvatar(
            backgroundColor: Colors.grey,
            child: Icon(Icons.person, color: Colors.white),
          ),
          title: Text(chats[index]["name"]!),
          subtitle: Text(chats[index]["message"]!),
          trailing: Text(chats[index]["time"]!),
          onTap: () {},
        );
      },
    );
  }
}

// Dummy Status Screen
class StatusScreen extends StatelessWidget {
  const StatusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.green,
            child: Icon(Icons.person, color: Colors.white),
          ),
          title: Text("My Status"),
          subtitle: Text("Tap to add status update"),
        ),
        Divider(),
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.grey,
            child: Icon(Icons.person, color: Colors.white),
          ),
          title: Text("Friend 1"),
          subtitle: Text("Today, 9:00 AM"),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.grey,
            child: Icon(Icons.person, color: Colors.white),
          ),
          title: Text("Friend 2"),
          subtitle: Text("Yesterday, 8:30 PM"),
        ),
      ],
    );
  }
}

// Dummy Calls Screen
class CallsScreen extends StatelessWidget {
  const CallsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.grey,
            child: Icon(Icons.person, color: Colors.white),
          ),
          title: Text("John Doe"),
          subtitle: Text("Incoming, Today 12:00 PM"),
          trailing: Icon(Icons.call, color: Colors.green),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.grey,
            child: Icon(Icons.person, color: Colors.white),
          ),
          title: Text("Jane Smith"),
          subtitle: Text("Outgoing, Yesterday 10:30 AM"),
          trailing: Icon(Icons.call_made, color: Colors.green),
        ),
      ],
    );
  }
}
