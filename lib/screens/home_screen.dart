import 'package:facebook_clone/config/palette.dart';
import 'package:facebook_clone/data/data.dart';
import 'package:facebook_clone/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
            centerTitle: false,
            title: const Text(
              'facebook',
              style: TextStyle(
                  color: Palette.facebookBlue,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  letterSpacing: -1.2),
            ),
            floating: true,
            actions: [
              CircleButton(icon: Icons.search, iconSize: 30, onPressed: () {}),
              CircleButton(
                  icon: FontAwesomeIcons.facebookMessenger,
                  iconSize: 30,
                  onPressed: () {})
            ],
          ),
          SliverToBoxAdapter(
            child: CreatePostContainer(currentUser:currentUser)
          )
        ],
      ),
    );
  }
}
