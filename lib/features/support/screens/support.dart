import 'package:flutter/material.dart';

class ChatBox extends StatelessWidget {
  final List<String> messages;
  final TextEditingController messageController;
  final VoidCallback onSend;

  ChatBox({
    Key? key,
    required this.messages,
    required this.messageController,
    required this.onSend,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Display chat messages
        Expanded(
          child: ListView.builder(
            padding: const EdgeInsets.all(8.0),
            itemCount: messages.length,
            itemBuilder: (context, index) {
              return Align(
                alignment: index % 2 == 0
                    ? Alignment.centerLeft
                    : Alignment.centerRight,
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 4.0),
                  padding: const EdgeInsets.all(12.0),
                  decoration: BoxDecoration(
                    color: index % 2 == 0 ? Colors.grey[200] : Colors.blue[200],
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Text(
                    messages[index],
                    style: const TextStyle(fontSize: 16.0),
                  ),
                ),
              );
            },
          ),
        ),
        const Divider(height: 1.0),
        // Message input field and send button
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  controller: messageController,
                  decoration: const InputDecoration(
                    hintText: 'Type a message...',
                    border: InputBorder.none,
                  ),
                ),
              ),
              IconButton(
                icon: const Icon(Icons.send, color: Colors.blue),
                onPressed: onSend,
              ),
            ],
          ),
        ),
        const SizedBox(height: 8.0),
      ],
    );
  }
}
