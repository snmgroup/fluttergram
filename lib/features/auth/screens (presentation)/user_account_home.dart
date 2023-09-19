import 'package:flutter/material.dart';
import 'package:flutter_gram/features/auth/screens%20(presentation)/user_home.dart';
import 'package:flutter_gram/features/camera/screens/camera_view.dart';
import 'package:flutter_gram/features/messaging/screens/message_home.dart';

class UserAccountHome extends StatelessWidget {
  /// User's home page after successful login
  const UserAccountHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      body: Column(
        children: [
          // Replicating the sliding featue to go to different screens
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              controller: ScrollController(
                  initialScrollOffset: MediaQuery.of(context).size.width),
              physics: const PageScrollPhysics(),
              children: [
                const CameraView(),
                UserHome(),
                const MessagingHome(),
              ]
                  .map((e) => SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: e,
                      ))
                  .toList(),
            ),
          )
        ],
      ),
    );
  }
}
