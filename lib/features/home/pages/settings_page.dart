import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/config/app_colors.dart';
import '../../../core/widgets/custom_appbar.dart';
import '../../../core/widgets/custom_scaffold.dart';
import '../../../core/widgets/texts/text_r.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScaffold(
      body: Column(
        children: [
          CustomAppbar(
            title: 'SETTINGS',
            back: true,
          ),
          SizedBox(height: 40),
          _Tile('Share with friends'),
          SizedBox(height: 27),
          _Tile('Subscription info'),
          SizedBox(height: 27),
          _Tile('Terms of use'),
          SizedBox(height: 27),
          _Tile('Privacy Policy'),
          SizedBox(height: 27),
        ],
      ),
    );
  }
}

class _Tile extends StatelessWidget {
  const _Tile(this.title);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      margin: const EdgeInsets.symmetric(horizontal: 22),
      decoration: BoxDecoration(
        color: AppColors.main,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: AppColors.border),
      ),
      child: CupertinoButton(
        onPressed: () {},
        padding: EdgeInsets.zero,
        minSize: 45,
        child: Row(
          children: [
            const SizedBox(width: 24),
            const Spacer(),
            TextM(title, fontSize: 20),
            const Spacer(),
            SvgPicture.asset('assets/chevron.svg'),
            const SizedBox(width: 14),
          ],
        ),
      ),
    );
  }
}
