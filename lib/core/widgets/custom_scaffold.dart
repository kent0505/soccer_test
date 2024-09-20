import 'package:flutter/material.dart';

class CustomScaffold extends StatelessWidget {
  const CustomScaffold({super.key, required this.body});

  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          // Container(
          //   height: MediaQuery.of(context).viewPadding.top,
          //   color: AppColors.white,
          // ),
          Expanded(
            child: Stack(
              children: [
                Image.asset('assets/bg.png'),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        const Color(0xff0A0C14).withOpacity(0),
                        const Color(0xff163B4B),
                      ],
                    ),
                  ),
                ),
                body,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
