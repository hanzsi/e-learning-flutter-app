import 'package:e_learning_app/constants/colors.dart';
import 'package:flutter/material.dart';

import '../../../models/course.dart';

class CourseItem extends StatelessWidget {
  final Course course;
  CourseItem(this.course);

  @override
  Widget build(BuildContext context) {
    return Container(
      // Stack course items
      child: Stack(
        children: [
          Container(
            height: 250,
            width: 250,
            decoration: BoxDecoration(
              color: kPrimaryLight,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                // Expanded fills available space.
                Expanded(
                  flex: 2,
                  child: ClipRRect( //clip the image and fill the 2/3 space
                    child: Image.asset(course.imageUrl, fit: BoxFit.cover,),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                ),
                // Fill 1/3 space
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // small img + author name in a row
                        Row(
                          children: [
                            Image.asset(
                              course.authorImg,
                              width: 20,
                            ),
                            const SizedBox(width: 5),
                            Text(
                              course.author,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 6),
                        // course title + circle boxshape + duration time in a row
                        Row(
                          children: [
                            Text(
                              course.title,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: kFont,
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.symmetric(horizontal: 5),
                              width: 5,
                              height: 5,
                              decoration: const BoxDecoration(
                                color: kFontLight,
                                shape: BoxShape.circle,
                              ),
                            ),
                            const Text(
                              '2h 30min',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: kFontLight,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 60,
            right: 20,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: kAccent,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {},
              child: const Text('Start'),
            ),
          ),
        ],
      ),
    );
  }
}