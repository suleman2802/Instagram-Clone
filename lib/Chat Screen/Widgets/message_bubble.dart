import 'package:flutter/cupertino.dart';
class MessageBubble extends StatelessWidget {
  final String _message;
  final bool _isMe;
  final Key key;
  MessageBubble(this._isMe,this._message,this.key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
      _isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
          margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
          decoration: BoxDecoration(
            color: _isMe
                ? CupertinoColors.systemPurple
                : CupertinoColors.systemGrey5,
            borderRadius: BorderRadius.only(
              topLeft: const Radius.circular(12),
              topRight: const Radius.circular(12),
              bottomLeft: !_isMe ? const Radius.circular(0) : const Radius.circular(12),
              bottomRight: _isMe ? const Radius.circular(0) : const Radius.circular(12),
            ),
          ),
          child: Column(
            crossAxisAlignment:
            _isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
            children: [
              Text(
                _message,
                style: TextStyle(
                  color: _isMe ? CupertinoTheme.of(context).scaffoldBackgroundColor : CupertinoTheme.of(context).primaryColor,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
