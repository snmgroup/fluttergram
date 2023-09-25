import 'package:flutter/material.dart';

class StoryBox extends StatelessWidget {
  const StoryBox({Key? key, required this.image, required this.id})
      : super(key: key);

  final String image;
  final String id;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: const BoxDecoration(
                // color: Colors.red,
                image: DecorationImage(
                    image: AssetImage('assets/images/download.png'),
                    fit: BoxFit.cover),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                child: Row(children: [
                  Hero(
                    tag: id,
                    child: CircleAvatar(
                      backgroundImage: AssetImage(image),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  const Text(
                    'miss_dog',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ]),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Row(
                  children: [
                    SizedBox(
                      height: 50,
                      width: 300,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          labelText: ('Send message'),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Icon(Icons.favorite_outline),
                    SizedBox(
                      width: 20,
                    ),
                    Icon(Icons.send_outlined),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
