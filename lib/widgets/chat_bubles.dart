part of 'widgets.dart';

class ChatBubble extends StatelessWidget {
  String text;
  bool isSender;

  ChatBubble({Key? key, this.isSender = false, this.text = ''})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(
        top: defaultMargin,
      ),
      child: Row(
        mainAxisAlignment: isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          Flexible(
            child: Container(
              constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width * 0.7),
              padding: EdgeInsets.symmetric(
                vertical: 12,
                horizontal: 16,
              ),
              decoration: BoxDecoration(
                  borderRadius:  BorderRadius.only(
                    topLeft: Radius.circular(isSender ? 12 : 0),
                    topRight: Radius.circular(!isSender ? 12 : 0),
                    bottomLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12),
                  ) ,
                  color: isSender ? backgroundColor5 : backgroundColor4),
              child: Text(
                text,
                style: primaryTextStyle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
