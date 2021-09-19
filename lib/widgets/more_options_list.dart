import 'package:facebook_clone/config/palette.dart';
import 'package:facebook_clone/models/user_model.dart';
import 'package:facebook_clone/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MoreOptionsList extends StatelessWidget {
  const MoreOptionsList({Key? key, required this.currentUser})
      : super(key: key);

  final User currentUser;
  final List<List> _moreOptionsList = const [
    [FontAwesomeIcons.shieldAlt, Colors.deepPurple, 'COVID-19 Info Center'],
    [FontAwesomeIcons.users, Colors.cyan, 'Friends'],
    [FontAwesomeIcons.facebookMessenger, Palette.facebookBlue, 'Messenger'],
    [FontAwesomeIcons.flag, Colors.orange, 'Pages'],
    [FontAwesomeIcons.store, Palette.facebookBlue, 'Marketplace'],
    [Icons.ondemand_video, Palette.facebookBlue, 'Watch'],
    [FontAwesomeIcons.calendarCheck, Colors.red, 'Events']
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        constraints: const BoxConstraints(maxWidth: 280.0),
        child: ListView.builder(
            itemCount: 1 + _moreOptionsList.length,
            itemBuilder: (context, index) {
              if (index == 0) {
                return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: UserCard(user: currentUser));
              }
              final List option = _moreOptionsList[index - 1];
              return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: _Option(
                      icon: option[0], color: option[1], label: option[2]));
            }));
  }
}

class _Option extends StatelessWidget {
  const _Option(
      {Key? key, required this.icon, required this.color, required this.label})
      : super(key: key);

  final IconData icon;
  final Color color;
  final String label;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {},
        child: Row(children: [
          Icon(icon, size: 38.0, color: color),
          const SizedBox(width: 8.0),
          Flexible(
              child: Text(
            label,
            style: const TextStyle(fontSize: 16.0),
            overflow: TextOverflow.ellipsis,
          ))
        ]));
  }
}
