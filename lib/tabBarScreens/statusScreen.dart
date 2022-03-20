import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../model/storyViewModel.dart';

Future<FilePickerResult?> filePicker() async {
  FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ["jpg', 'pdf', 'doc"]
  );
  return result;
}

class StatusScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xfff2f2f2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(
            color: Colors.white,
            elevation: 10,
            child: Padding(
              padding: EdgeInsets.all(8),
              child: ListTile(
                onTap: () => filePicker(),
                leading: Stack(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage('url'),
                    ),
                    Positioned(
                      bottom: 0.0, right: 1.0,
                      child: Container(
                        height: 20, width: 20,
                        child: Icon(Icons.add, color: Colors.white, size: 15),
                        decoration: BoxDecoration(
                          color: Colors.green,
                          shape: BoxShape.circle
                        ),
                      ),
                    )
                  ],
                ),
                title: Text("My Status", 
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text("Tap to add status update"),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Text("Viewed updates",
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold)
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(8),
              color: Colors.white,
              child: ListView(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage("url"),
                    ),
                    title: Text("Name",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text("Today, 08:20 PM"),
                    onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => StoryPageView())
                    ),
                  ) 
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
