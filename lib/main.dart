
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'whatsappHome.dart';

late List<CameraDescription> cameras;

Future <void> main() async {
  try {
    WidgetsFlutterBinding.ensureInitialized();
    cameras = await availableCameras();
  } on CameraException catch (e) {
    print('Error in fetching the cameras: $e');
  }
  runApp(CloneWhatsApp());
}

class CloneWhatsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "WhatsApp",
      theme: ThemeData(
        primaryColor: Color(0xFF008069),
        accentColor: Color(0xff25D366),
      ),
      home: WhatsAppHome(cameras: cameras),
      // home: WhatsAppHome(),
    );
  }
}
