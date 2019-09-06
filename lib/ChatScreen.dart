import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        conversation(3),
        conversation(0),
        conversation(0),
        conversation(4),
      ],
    );
  }
}

Widget conversation(int messagesCount) {
  return Container(
    padding: EdgeInsets.all(8),
    child: Column(
      children: <Widget>[
        ListTile(
          leading: ClipOval(
            child: Image.network(
                'https://cdn.pixabay.com/photo/2013/07/13/10/07/man-156584_960_720.png'),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Name ',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
                  ),
                  Text(
                    'message dsfsdf rtedt',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    '11:48 AM',
                    style: TextStyle(
                        color: messagesCount > 0
                            ? Color(0xFF25D366)
                            : Colors.grey),
                  ),
                  messagesCount > 0
                      ? Chip(
                          backgroundColor: Color(0xFF25D366),
                          label: Text(
                            '$messagesCount',
                            style: TextStyle(color: Colors.white),
                          ),
                        )
                      : Text(''),
                ],
              )
            ],
          ),
        ),
        Container(
          width: 330,
          height: 1,
          margin: EdgeInsets.only(left: 56, top: 21),
          color: Colors.grey.withOpacity(.2),
        )
      ],
    ),
  );
}
