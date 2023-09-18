import 'package:flutter_gram/features/story/screens/story_box.dart';
import 'package:flutter_gram/utils/exporter.dart';

class StoryAvatar extends StatelessWidget {
  const StoryAvatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              return const StoryBox();
            },
          ));
        },
        child: Container(
          // margin: const EdgeInsets.only(right: 15),
          height: 85,
          width: 85,
          decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: NetworkImage(
                      "https://lh3.googleusercontent.com/a/ACg8ocKTKNQIDtL90jkFrFScRYvayZ3ltaJfD3mk9cjpYfYD7OE=s288-c-no"))),
        ),
      ),
    );
  }
}
