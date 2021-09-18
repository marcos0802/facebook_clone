import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_clone/models/user_model.dart';
import 'package:flutter/material.dart';

class CreatePostContainer extends StatelessWidget {
  const CreatePostContainer({Key? key, required this.currentUser})
      : super(key: key);

  final User currentUser;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange,
      child: Column(children: [
        Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundColor: Colors.grey[200],
              backgroundImage: CachedNetworkImageProvider(currentUser.imageUrl),
            )
          ],
        )
      ]),
    );
  }
}
