import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/chat_icon_button.dart';
import '../components/my_chat.dart';
import '../components/other_chat.dart';
import '../components/time_line.dart';
import 'package:intl/intl.dart';

class ChatRoomScreen extends StatefulWidget {
  const ChatRoomScreen({super.key});

  @override
  State<ChatRoomScreen> createState() => _ChatRoomScreenState();
}

class _ChatRoomScreenState extends State<ChatRoomScreen> {
  final List<MyChat> chats = [];
  final TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFb2c7da),
      child: Scaffold(
        body: Container(
          color: const Color(0xFFb2c7da),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              foregroundColor: Colors.black,
              backgroundColor: Colors.transparent,
              title: Text(
                "홍길동",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              actions: const [
                Icon(
                  FontAwesomeIcons.magnifyingGlass,
                  size: 20,
                ),
                SizedBox(
                  width: 25,
                ),
                Icon(FontAwesomeIcons.bars, size: 20),
                SizedBox(
                  width: 25,
                ),
              ],
            ),
            body: Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Column(
                        children: [
                          const TimeLine(time: "2021년 1월 1일 금요일"),
                          const OtherChat(
                            name: "홍길동",
                            text: "새해 복 많이 받으세요.",
                            time: "오전 10:10",
                          ),
                          const MyChat(
                            text: "선생님도 많이 받으십시오.",
                            time: "오후 2:15",
                          ),
                          ...List.generate(
                              chats.length, (index) => chats[index]),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 60,
                  color: Colors.white,
                  child: Row(
                    children: [
                      const ChatIconButton(
                        icon: Icon(
                          FontAwesomeIcons.squarePlus,
                        ),
                      ),
                      Expanded(
                        child: TextField(
                          controller: _textController,
                          maxLines: 1,
                          style: const TextStyle(fontSize: 20),
                          decoration: const InputDecoration(
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                          ),
                          onSubmitted: _handleSubmitted,
                        ),
                      ),
                      const ChatIconButton(
                        icon: Icon(FontAwesomeIcons.faceSmile),
                      ),
                      const ChatIconButton(
                        icon: Icon(FontAwesomeIcons.gear),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _handleSubmitted(text) {
    _textController.clear();

    setState(() {
      chats.add(MyChat(
        text: text,
        time: DateFormat("a K:m")
            .format(DateTime.now())
            .replaceAll("AM", "오전")
            .replaceAll("PM", "오후"),
      ));
    });
  }
}
