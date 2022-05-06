import 'package:e_learning_app/constants/colors.dart';
import 'package:e_learning_app/screens/home/widget/active_course.dart';
import 'package:e_learning_app/screens/home/widget/emoji_text.dart';
import 'package:e_learning_app/screens/home/widget/feature_course.dart';
import 'package:e_learning_app/screens/home/widget/search_input.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            EmojiText(),
            SearchInput(),
            FeatureCourse(),
            ActiveCourse(),
          ],
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: kBackground,
      elevation: 0,
      centerTitle: false,
      title: const Padding(
        padding: EdgeInsets.only(left: 10),
        child: Text(
          'Hello Patrik!',
          style: TextStyle(color: kFontLight, fontSize: 16),
        ),
      ),
      actions: [
        // Stack widget to put together Container & Positioned
        Stack(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 10, right: 20),
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                border: Border.all(
                  color: kFontLight.withOpacity(0.3), width: 2),
                  borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset(
                'assets/icons/notification.png',
                width: 30,
                ),
            ),
            // Position notification circle into the right place
            Positioned(
              top: 15,
              right: 30,
              child: Container(
                height: 8,
                width: 8,
                decoration: const BoxDecoration(
                  color: kAccent,
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}