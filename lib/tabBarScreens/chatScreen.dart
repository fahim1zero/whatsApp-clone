import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import '../model/chatModel.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dummyData.length,
      itemBuilder: (context, i) => Column(
        children: [
          Divider(height: 10),
          ListTile(
            leading: CircleAvatar(
              foregroundColor: Theme.of(context).primaryColor,
              backgroundColor: Colors.grey,
              backgroundImage: NetworkImage("url"),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(dummyData[i].name,
                  style: TextStyle(
                    color: Colors.black, 
                    fontSize: 14,
                    fontWeight: FontWeight.bold
                  ),
                ),
                Text(dummyData[i].time,
                  style: TextStyle(color: Colors.grey, fontSize: 10),
                ),
              ],
            ),
            subtitle: Container(
              padding: EdgeInsets.only(top: 5),
              child: Text(dummyData[i].message,
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
            ),
          )
        ],
      ),
    );
  }
}
