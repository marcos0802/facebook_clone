import 'package:facebook_clone/models/user_model.dart';
import 'package:facebook_clone/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CreatePostContainer extends StatelessWidget {
  const CreatePostContainer({Key? key, required this.currentUser})
      : super(key: key);

  final User currentUser;

  @override
  Widget build(BuildContext context) {
    final bool isDesktop = Responsive.isDesktop(context);
    return Card(
      margin: EdgeInsets.symmetric(horizontal: isDesktop ? 5.0 : 0.0),
      elevation: isDesktop ? 1.0 : 0.0,
      shape: isDesktop
          ? RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0))
          : null,
      child: Container(
        color: Colors.white,
        padding: const EdgeInsets.fromLTRB(12.0, 8.0, 12.0, 0.0),
        child: Column(children: [
          Row(
            children: [
              ProfileAvatar(imageUrl: currentUser.imageUrl),
              const SizedBox(
                width: 8.0,
              ),
              const Expanded(
                child: TextField(
                    decoration: InputDecoration.collapsed(
                        hintText: 'What\'s on your mind')),
              )
            ],
          ),
          const Divider(
            height: 10,
            thickness: 0.5,
          ),
          SizedBox(
            height: 40.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.videocam,
                      color: Colors.red,
                    ),
                    label: const Text(
                      'Live',
                      style: TextStyle(color: Colors.black),
                    )),
                const VerticalDivider(
                  width: 8.0,
                ),
                TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.photo_library,
                      color: Colors.green,
                    ),
                    label: const Text(
                      'Photo',
                      style: TextStyle(color: Colors.black),
                    )),
                const VerticalDivider(
                  width: 8.0,
                ),
                TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.video_call,
                      color: Colors.purpleAccent,
                    ),
                    label: const Text(
                      'Room',
                      style: TextStyle(color: Colors.black),
                    ))
              ],
            ),
          )
        ]),
      ),
    );
  }
}
