import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'message_cards.dart';
import 'messaging_appbar.dart';
import 'messaging_bottom_navbar.dart';


class FriendsMessaging extends StatelessWidget {
  const FriendsMessaging({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFCFF78),
      appBar: MessagingAppBar(
        name: 'Johnny Watson',
        imageUrl: 'https://img.freepik.com/free-photo/african-american-man-wearing-stylish-hat_23-2148634061.jpg?w=740&t=st=1688058987~exp=1688059587~hmac=a75950e5fc90a6ac5b89ec712e0df60ada8ad7df48abe292072695a2715446cd',
        onTap: () {
          context.go('/');
        },
      ),
      body: Container(
        padding: const EdgeInsets.only(right: 20, left: 20),
        child: const Messages(),
      ),
      bottomNavigationBar: const MessagingBottomNavBar(),
    );
  }
}

class Messages extends StatelessWidget {
  const Messages({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        ChatTime(chatTime: 'Yesterday'),
        MessageIncoming(
            name: 'Johnny Watson',
            message:
                'This is the first phrase or sentence of my chat that ...',
            time: '3:37 AM'),
        MessageOutgoing(
            name: 'Jane Warren',
            message:
                'This is the first phrase or sentence of my chat that is hidden inside this ... This is the first phrase or sentence of my chat that is hidden inside this ... This is the first phrase or sentence of my chat that is hidden inside this ... This is the first phrase or sentence of my chat that ...',
            time: '4:15 AM'),
        MessageIncoming(
            name: 'Johnny Watson',
            message:
                'This is the first phrase or sentence of my chat that is hidden inside this ... This is the first phrase or sentence of my chat that',
            time: '5:00 AM'),
        MessageOutgoing(
            name: 'Jane Warren',
            message:
                'This is the first phrase or sentence of my chat that is hidden inside this ... This is the first phrase or sentence of my chat that is hidden inside this ... This is the first phrase or sentence of my chat that is hidden inside this ... This is the first phrase or sentence of my chat that is hidden inside this ... This is the first phrase or sentence of my chat that is hidden inside this ... This is the first phrase or',
            time: '5:11 AM'),
      ],
    );
  }
}

class ChatTime extends StatelessWidget {
  final String chatTime;
  const ChatTime({
    required this.chatTime,
    super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 20, bottom: 20),
        child: Text(chatTime, style: const TextStyle(fontSize: 15, color: Color(0xFF8C8A8A)),),
      ),
    );
  }
}