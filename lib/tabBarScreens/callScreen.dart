import 'package:flutter/material.dart';
import '/model/callModel.dart';

class CallScreen extends StatefulWidget {
  @override
  _CallScreenState createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dummyCallData.length,
      itemBuilder: (context, i) => Column(
        children: [
          Divider(height: 10),
          ListTile(
            leading: CircleAvatar(
              foregroundColor: Theme.of(context).primaryColor,
              backgroundColor: Colors.grey,
              backgroundImage: NetworkImage("url"),
            ),
            title: Text(dummyCallData[i].name,
              style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.bold
                  ),
            ),
            subtitle: Container(
              padding: EdgeInsets.only(top: 5),
              child: Text(dummyCallData[i].dateAndTime,
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
            ),
            trailing: Icon(Icons.call,
              color: Color(0xFF008069),
            ),
          )
        ],
      ),
    );
  }
}
