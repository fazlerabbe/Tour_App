import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyRowTextList extends StatelessWidget {
  const MyRowTextList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('All'),
          Text('Popular'),
          Text('Recommended'),
          Text('Most Viewed'),
          Text('Recommeded'),
        ],
      ),
    );
  }
}
