// import 'package:flutter/material.dart';
// import 'package:flutter_gram/features/story/screens/story_avatar.dart';

// class StoryBox extends StatelessWidget {
//   const StoryBox({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: Column(
//           children: [
//             Stack(
//               children: [
//                 Container(
//                   // decoration: const BoxDecoration(color: Colors.grey),
//                   height: MediaQuery.of(context).size.height * 0.85,
//                   child: Image.asset(
//                     'assets/images/download.png',
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//                 const Align(
//                   alignment: Alignment.topCenter,
//                   child: Row(
//                     children: [
//                       CircleAvatar(
//                         backgroundImage: AssetImage('assets/images/ok.jpeg'),
//                       ),
//                       Text(
//                         'mr_dog',
//                         style: TextStyle(
//                             fontWeight: FontWeight.bold, fontSize: 20),
//                       ),
//                     ],
//                   ),
//                 )
//               ],
//             ),
//             Container(
//               padding: const EdgeInsets.all(8.0),
//               child: const Row(
//                 children: [
//                   Expanded(
//                     child: TextField(
//                       decoration: InputDecoration(
//                         border: OutlineInputBorder(
//                             borderRadius:
//                                 BorderRadius.all(Radius.circular(30))),
//                         labelText: 'Send message',
//                         prefixIcon: Icon(Icons.camera_alt_rounded),
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     width: 20,
//                   ),
//                   Icon(Icons.favorite_outline),
//                   SizedBox(
//                     width: 20,
//                   ),
//                   Icon(Icons.send_outlined),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class StoryBox extends StatelessWidget {
  const StoryBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.red,
                image: DecorationImage(
                    image: AssetImage('assets/images/download.png'),
                    fit: BoxFit.cover),
              ),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                child: Row(children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/ok.jpeg'),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
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
