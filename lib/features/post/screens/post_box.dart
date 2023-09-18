import 'dart:math';

import 'package:flutter_gram/utils/exporter.dart';

class PostBox extends StatelessWidget {
  const PostBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const horizontalPadding = 12.0;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: horizontalPadding),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipOval(
                  // borderRadius: BorderRadius.circular(50),
                  child: Container(
                      color: Colors.grey, child: const FlutterLogo())),
              const Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text("championsleauge "),
                          Icon(
                            Icons.verified,
                            size: 12,
                            color: Colors.blue,
                          ),
                        ],
                      ),
                      Text("Paid partnership with easportsfc"),
                    ],
                  ),
                ),
              ),
              const Icon(Icons.menu_sharp)
            ],
          ),
        ),
        Container(
          decoration: const BoxDecoration(color: Colors.grey),
          margin: const EdgeInsets.only(top: 8),
          child: Placeholder(
            fallbackHeight: (Random().nextDouble() * 300) + 120,
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: horizontalPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  ...[
                    const Icon(Icons.favorite_outline),
                    const Icon(Icons.mode_comment_outlined),
                    const Icon(Icons.send_outlined),
                  ]
                      .map((e) => Container(
                            margin: const EdgeInsets.only(
                                right: horizontalPadding * 2),
                            child: e,
                          ))
                      .toList(),
                  const Spacer(),
                  const Icon(Icons.bookmark_outline)
                ],
              ),
              const Text("381,232 likes"),
              RichText(
                text: const TextSpan(children: [
                  TextSpan(
                      text: "championsleague",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(
                      text:
                          " The fastest players in the #UCL on @easportsfc 24 🌪️"),
                ]),
              ),
              const Text(
                "#UCLFCratings",
                style: TextStyle(color: Color(0xffa5b2bc)),
              ),
              const Text(
                "View all 1,688 comments",
                style: TextStyle(color: Colors.grey),
              ),
              Text(
                "4 hours ago",
                style: Theme.of(context).textTheme.bodySmall,
              )
            ]
                .map((e) => Container(
                      margin: const EdgeInsets.only(top: 8),
                      child: e,
                    ))
                .toList(),
          ),
        )
      ],
    );
  }
}
