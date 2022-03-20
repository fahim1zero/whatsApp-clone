import 'package:camera/camera.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import '/tabBarScreens/callScreen.dart';
import '/tabBarScreens/cameraScreen.dart';
import '/tabBarScreens/chatScreen.dart';
import '/tabBarScreens/statusScreen.dart';

class WhatsAppHome extends StatefulWidget {
  final List<CameraDescription> cameras;
  WhatsAppHome({required this.cameras});
  // WhatsAppHome();
  @override
  _WhatsAppHomeState createState() => _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome> with 
    SingleTickerProviderStateMixin {
  
  late TabController _tabController;
  bool showFab = true;
  bool showFab2 = true;
  
  @override
    void initState(){
      super.initState();
      _tabController = TabController(length: 4, vsync: this, initialIndex: 1);
      _tabController.addListener(() { 
        if(_tabController.index == 1) {
          showFab = true;
        } else {
          showFab = false;
        }
        setState(() {});
      });
    }
    
    @override
    Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WhatsApp"),
        elevation: 0.7,
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: [
            Tab(icon: Icon(Icons.camera_alt)),
            Tab(text: "CHATS"),
            Tab(text: "STATUS"),
            Tab(text: "CALL"),
          ],
        ),
        actions: [
          Icon(Icons.search),
          Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
          Icon(Icons.more_vert)
        ],
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          CameraScreen(widget.cameras),
          // CameraScreen(),
          ChatScreen(),
          StatusScreen(),
          CallScreen(),
        ],
      ),
      floatingActionButton: 
      showFab ? FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
        child: Icon(Icons.message, color: Colors.white),
        onPressed: () => print("Open Chat")) 
        : showFab2 ? FloatingActionButton(
          backgroundColor: Theme.of(context).accentColor,
          child: Icon(Icons.camera_alt, color: Colors.white),
          onPressed: () => print("Add Status")) 
        : null,
    );
  }
}
