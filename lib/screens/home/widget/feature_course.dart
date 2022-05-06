import 'package:e_learning_app/screens/home/widget/category_title.dart';
import 'package:e_learning_app/screens/home/widget/course_item.dart';
import 'package:flutter/material.dart';

import '../../../models/course.dart';

class FeatureCourse extends StatelessWidget {
  final coursesList = Course.generateCourses();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CategoryTitle('Top of the week', 'View All'),
          Container(
            height: 300,
            padding: const EdgeInsets.all(25),
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: coursesList.length,
              itemBuilder: (context, index) => CourseItem(coursesList[index]),
              separatorBuilder: (BuildContext context, int index) => const SizedBox(width: 15),
            ),
          ),
        ],
      ),
    );
  }
}