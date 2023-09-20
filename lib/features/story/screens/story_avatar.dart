import 'dart:math';

import 'package:flutter_gram/features/story/screens/story_box.dart';
import 'package:flutter_gram/utils/exporter.dart';

class StoryAvatar extends StatelessWidget {
  StoryAvatar({Key? key}) : super(key: key);

  final String image = "assets/images/ok.jpeg";
  final String id = Random().nextInt(10000).toString();

  @override
  Widget build(BuildContext context) {
    print(id);
    return Container(
      padding: const EdgeInsets.all(2),
      margin: const EdgeInsets.only(right: 15),
      decoration: const BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(colors: [
            Colors.red,
            Colors.orange,
            Colors.pink,
            Colors.redAccent
          ])),
      child: InkWell(
        borderRadius: BorderRadius.circular(500),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return StoryBox(
                image: image,
                id: id,
              );
            },
          ));
        },
        child: Container(
          // margin: const EdgeInsets.only(right: 15),
          height: 85,
          width: 85,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(image),
            ),
          ),
        ),
      ),
    );
  }
}
