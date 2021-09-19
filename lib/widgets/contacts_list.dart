import 'package:facebook_clone/models/user_model.dart';
import 'package:facebook_clone/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ContactsList extends StatelessWidget {
  const ContactsList({Key? key, required this.users}) : super(key: key);

  final List<User> users;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 280.0),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                  child: Text(
                'Contacts',
                style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey[500]),
              )),
              Icon(Icons.search, color: Colors.grey[600]),
              const SizedBox(width: 8.0),
              Icon(Icons.more_horiz, color: Colors.grey[600]),
            ],
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              itemBuilder: (context, int index) {
                final User user = users[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: UserCard(user: user),
                );
              },
              itemCount: users.length,
            ),
          )
        ],
      ),
    );
  }
}
