part of 'widgets.dart';

class ChatBubble extends StatelessWidget {
  String text;
  bool isSender;
  final bool hasProduct;

  ChatBubble({Key? key, this.isSender = false, this.text = '', this.hasProduct = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget productPreview() {
      return Container(
        width: 230,
        margin: EdgeInsets.only(
          bottom: 12,
        ),
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(isSender ? 12 : 0),
              topRight: Radius.circular(!isSender ? 12 : 0),
              bottomLeft: Radius.circular(12),
              bottomRight: Radius.circular(12),
            ),
            color: isSender ? backgroundColor5 : backgroundColor4),
        child: Column(
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    'assets/images/image_shoes.png',
                    width: 70,
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'COURT VISION 2.0 SHOES',
                        style: primaryTextStyle,
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        '\$56,23',
                        style: priceTextStyle.copyWith(
                          fontWeight: medium,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                OutlinedButton(
                  onPressed: () {},
                  child: Text(
                    'Add to Cart',
                    style: purpleTextStyle,
                  ),
                  style: OutlinedButton.styleFrom(
                      side: BorderSide(
                        color: primaryColor,
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8))),
                ),
                SizedBox(
                  width: 8,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Buy Now',
                    style: GoogleFonts.poppins(
                        color: backgroundColor5, fontWeight: medium),
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      );
    }

    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(
        top: defaultMargin,
      ),
      child: Column(
        crossAxisAlignment:
            isSender ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          hasProduct ? productPreview() : SizedBox(),
          Row(
            mainAxisAlignment:
                isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
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
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(isSender ? 12 : 0),
                        topRight: Radius.circular(!isSender ? 12 : 0),
                        bottomLeft: Radius.circular(12),
                        bottomRight: Radius.circular(12),
                      ),
                      color: isSender ? backgroundColor5 : backgroundColor4),
                  child: Text(
                    text,
                    style: primaryTextStyle,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
