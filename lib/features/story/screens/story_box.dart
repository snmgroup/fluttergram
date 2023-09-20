import 'package:flutter/material.dart';

class StoryBox extends StatelessWidget {
  const StoryBox({Key? key, required this.image, required this.id})
      : super(key: key);

  final String image;
  final String id;

  @override
  Widget build(BuildContext context) {
    print(id);
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Hero(
              tag: id,
              child: Container(
                height: double.infinity,
                width: double.infinity,
                decoration: const BoxDecoration(
                  // color: Colors.red,
                  image: DecorationImage(
                      image: AssetImage('assets/images/download.png'),
                      fit: BoxFit.cover),
                ),
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
                    'mr_dog',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 300,
                      child: const TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          labelText: ('Send message'),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const Icon(Icons.favorite_outline),
                    const SizedBox(
                      width: 20,
                    ),
                    const Icon(Icons.send_outlined),
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
