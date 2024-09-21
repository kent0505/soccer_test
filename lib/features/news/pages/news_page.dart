import 'package:flutter/material.dart';

import '../../../core/utils.dart';
import '../../../core/widgets/custom_appbar.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomAppbar(title: 'NEWS'),
        Expanded(
          child: ListView(
            children: const [
              SizedBox(height: 13),
            ],
          ),
        ),
        SizedBox(height: navBarHeight),
      ],
    );
  }
}
