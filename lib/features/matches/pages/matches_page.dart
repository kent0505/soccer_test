import 'package:flutter/material.dart';
import 'package:soccer_test/core/widgets/custom_appbar.dart';

import '../../../core/widgets/texts/text_r.dart';

class MatchesPage extends StatelessWidget {
  const MatchesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppbar(title: 'MY MATCHES'),
        TextM('Matches', fontSize: 20),
      ],
    );
  }
}
