import 'package:flutter/material.dart';
import 'package:job_finder_app/models/message_model.dart';
import 'package:job_finder_app/utils/app_fonts.dart';
import 'package:job_finder_app/utils/app_images.dart';

import 'message_bubble.dart';
import 'my_message_bubble.dart';

class MessageCompanyItem extends StatefulWidget {
  const MessageCompanyItem({
    super.key,
    required this.title,
    required this.image,
    required this.company,
    required this.id,
  });

  final String title;
  final String image;
  final String company;
  final int id;

  @override
  State<MessageCompanyItem> createState() => _MessageCompanyItemState();
}

class _MessageCompanyItemState extends State<MessageCompanyItem> {
  late TextEditingController textEditingController;
  late ScrollController scrollController;

  List<MessageModel> message = [
    MessageModel(
      isUser: false,
      massage:
          "Жарайды, мен түстен кейінгі кездесу үшін Google Meet сілтемесін жіберемін. Уақытылы қосылуды сұраймын, рахмет!\nhttps://meet.google.com/dis-sxdu-ave",
    ),
    MessageModel(
      isUser: true,
      massage: "Әрине, мен қатыса аламын!",
    ),
    MessageModel(
      isUser: false,
      massage: "Біз бүгін сағат 15:00-де Google Meet арқылы сұхбаттаса аламыз ба?",
    ),
    MessageModel(
      isUser: true,
      massage:
          "Сәлем, Мелан! Мені қарастырғаныңызға рақмет, бұл мен үшін тамаша жаңалық.",
    ),
    MessageModel(
      isUser: false,
      massage:
          "Сәлем, Рафиф! Мен Мелан, Twitter компаниясының іріктеу тобынанмын. Біздің компанияға жұмысқа өтініш бергеніңіз үшін рақмет. Біз сіздің сұхбат кезеңіне өтуге лайық екеніңізді хабарлаймыз.",
    ),
  ];

  @override
  void initState() {
    textEditingController = TextEditingController();
    scrollController = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    textEditingController.dispose();
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              _buildHeader(context),
              Expanded(
                child: _buildMessageList(),
              ),
              _buildMessageInput(),
            ],
          ),
        ),
      ),
    );
  }

  Row _buildMessageInput() {
    return Row(
      children: [
        Expanded(
          child: TextField(
            controller: textEditingController,
            decoration: InputDecoration(
              fillColor: Colors.black,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(100),
              ),
              suffixIcon: const Icon(
                Icons.send,
              ),
              hintText: 'Хабарлама жазыңыз...',
              hintStyle: const TextStyle(
                color: Color(0xff9CA3AF),
                fontSize: 14,
                fontFamily: AppFonts.kLoginSubHeadlineFont,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildMessageList() {
    return ListView.builder(
      controller: scrollController,
      reverse: true,
      itemCount: message.length,
      itemBuilder: (context, index) {
        return getMessageBubble(message[index]);
      },
    );
  }

  Row _buildHeader(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back),
        ),
        const SizedBox(width: 20),
        Image.asset(widget.image),
        const SizedBox(width: 10),
        Text(
          widget.title,
          style: const TextStyle(
            color: Color(0xff111827),
            fontFamily: AppFonts.kLoginHeadlineFont,
            fontSize: 16,
          ),
        ),
        const Spacer(),
        Image.asset(AppImages.kMore)
      ],
    );
  }

  Widget getMessageBubble(MessageModel message) {
    if (message.isUser == true) {
      return MyMessageBubble(messageModel: message);
    } else {
      return MessageBubble(messageModel: message);
    }
  }
}
