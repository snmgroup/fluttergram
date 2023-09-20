import 'dart:math';

import 'package:flutter_gram/features/post/screens/post_box.dart';
import 'package:flutter_gram/features/story/screens/story_avatar.dart';
import 'package:flutter_gram/utils/exporter.dart';

class UserHome extends StatelessWidget {
  /// Users actual home with post feed and stories
  UserHome({Key? key}) : super(key: key);

  final ScrollController controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor: Colors.black,
        body: RefreshIndicator(
          onRefresh: () async {},
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            controller: controller,
            slivers: [
              SliverAppBar(
                floating: true,
                // backgroundColor: Colors.black,
                snap: true,
                title: const Text("Fluttergram"),
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
              SliverPadding(
                padding: const EdgeInsets.only(left: 10),
                sliver: SliverToBoxAdapter(
                  child: SizedBox(
                    height: 100,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return StoryAvatar();
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
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                  onTap: () {
                    controller.animateTo(0,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeIn);
                  },
                  child: const Icon(Icons.home)),
              const Icon(Icons.search),
              const Icon(Icons.add_a_photo_outlined),
              const Icon(Icons.play_lesson),
              const FlutterLogo()
            ],
          ),
        ),
      ),
    );
  }
}
