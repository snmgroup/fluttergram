import 'dart:math';

import 'package:flutter_gram/features/post/screens/post_box.dart';
import 'package:flutter_gram/features/story/screens/story_avatar.dart';
import 'package:flutter_gram/utils/exporter.dart';

class UserHome extends StatelessWidget {
  /// Users actual home with post feed and stories
  const UserHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("Fluttergram"),
        backgroundColor: Colors.black,
        actions: [
          const Icon(Icons.favorite_outline),
          const Icon(Icons.bubble_chart_outlined)
        ]
            .map((e) => Container(
                  margin: const EdgeInsets.only(right: 10),
                  child: e,
                ))
            .toList(),
      ),
      body: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.only(left: 10),
            sliver: SliverToBoxAdapter(
              child: SizedBox(
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return const StoryAvatar();
                  },
                  itemCount: 5,
                ),
              ),
            ),
          ),
          SliverList.builder(
            itemBuilder: (context, index) {
              return Container(
                  margin: const EdgeInsets.symmetric(vertical: 15),
                  child: const PostBox());
            },
            itemCount: Random().nextInt(20) + 10,
          ),
        ],
      ),
    );
  }
}
