import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../utils.dart';
import 'texts/text_r.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 27 + getStatusBar(context),
        bottom: 14,
      ),
      child: Row(
        children: [
          const SizedBox(width: 15),
          Expanded(
            child: TextB(
              title,
              fontSize: 32,
              maxLines: 2,
            ),
          ),
          CupertinoButton(
            onPressed: () {
              context.push('/home/settings');
            },
            padding: EdgeInsets.zero,
            minSize: 38,
            child: SvgPicture.asset('assets/settings.svg'),
          ),
          const SizedBox(width: 15),
        ],
      ),
    );
  }
}
