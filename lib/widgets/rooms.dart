import 'package:facebook_clone/config/palette.dart';
import 'package:facebook_clone/models/user_model.dart';
import 'package:facebook_clone/widgets/widgets.dart';
import 'package:flutter/material.dart';

class Rooms extends StatelessWidget {
  const Rooms({Key? key, required this.onlineUsers}) : super(key: key);

  final List<User> onlineUsers;

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
        height: 60.0,
        color: Colors.white,
        child: ListView.builder(
            padding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
            scrollDirection: Axis.horizontal,
            itemCount: 1 + onlineUsers.length,
            itemBuilder: (BuildContext context, int index) {
              if (index == 0) {
                return const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: _CreateRoomButton(),
                );
              }
              final User user = onlineUsers[index - 1];
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: ProfileAvatar(
                  imageUrl: user.imageUrl,
                  isActive: true,
                ),
              );
            }),
      ),
    );
  }
}

class _CreateRoomButton extends StatelessWidget {
  const _CreateRoomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 5.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            border: Border.all(width: 3.0, color: Colors.blueAccent[100]!)),
        child: Center(
            child: Row(
          children: [
            ShaderMask(
              shaderCallback: (rect) =>
                  Palette.createRoomGradient.createShader(rect),
              child: const Icon(
                Icons.video_call,
                color: Colors.white,
                size: 35,
              ),
            ),
            const SizedBox(
              width: 8.0,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 4),
              child: Text(
                'Create \nRoom',
                style: TextStyle(color: Palette.facebookBlue),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
