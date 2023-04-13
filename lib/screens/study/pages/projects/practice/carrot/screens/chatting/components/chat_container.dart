import 'package:flutter/material.dart';
import '../../../models/chat_message.dart';
import '../../components/image_container.dart';
import '../../../theme.dart';

class ChatContainer extends StatelessWidget {
  final ChatMessage chatMessage;

  const ChatContainer({super.key, required this.chatMessage});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey, width: 0.5),
        ),
      ),
      height: 100,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            ImageContainer(
              borderRadius: 25,
              imageUrl: chatMessage.profileImage,
              width: 50,
              height: 50,
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Spacer(),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: chatMessage.sender,
                          style: textTheme().bodyLarge,
                        ),
                        TextSpan(text: chatMessage.location),
                        TextSpan(text: ' • ${chatMessage.sendDate}'),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Text(
                    chatMessage.message,
                    style: textTheme().bodyLarge,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const Spacer(),
                ],
              ),
            ),
            Visibility(
              visible: chatMessage.imageUri != null,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: ImageContainer(
                    width: 50,
                    height: 50,
                    borderRadius: 8,
                    imageUrl: chatMessage.imageUri ?? "",
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
