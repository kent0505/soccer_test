import 'package:flutter/material.dart';

import '../../../core/utils.dart';
import '../../../core/widgets/buttons/primary_button.dart';
import '../../../core/widgets/custom_appbar.dart';
import '../../../core/widgets/textfields/txt_field.dart';
import '../../../core/widgets/texts/text_r.dart';

class AddMatchPage extends StatefulWidget {
  const AddMatchPage({super.key});

  @override
  State<AddMatchPage> createState() => AddMatchPageState();
}

class AddMatchPageState extends State<AddMatchPage> {
  final controller1 = TextEditingController();
  final controller2 = TextEditingController();
  final controller3 = TextEditingController();
  final controller4 = TextEditingController();
  final controller5 = TextEditingController();
  final controller6 = TextEditingController();

  bool active = false;

  void checkActive() {
    setState(() {
      active = getButtonActive([
        controller1,
        controller2,
        controller3,
        controller4,
      ]);
    });
  }

  void onSave() {
    // context.read<CafesBloc>().add();
    // context.pop();
  }

  @override
  void dispose() {
    controller1.dispose();
    controller2.dispose();
    controller3.dispose();
    controller4.dispose();
    controller5.dispose();
    controller6.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomAppbar(title: 'ADD MATCHES'),
        Expanded(
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            children: [
              const SizedBox(height: 14),
              const TextM('Team names', fontSize: 20),
              const SizedBox(height: 14),
              TxtField(
                controller: controller1,
                hintText: 'Team one',
                onChanged: checkActive,
              ),
              const SizedBox(height: 14),
              TxtField(
                controller: controller2,
                hintText: 'Team two',
                onChanged: checkActive,
              ),
              const SizedBox(height: 27),
              const TextM('Score team one', fontSize: 20),
              const SizedBox(height: 14),
              TxtField(
                controller: controller3,
                hintText: 'Enter score',
                number: true,
                length: 2,
                onChanged: checkActive,
              ),
              const SizedBox(height: 27),
              const TextM('Score team two', fontSize: 20),
              const SizedBox(height: 14),
              TxtField(
                controller: controller4,
                hintText: 'Enter score',
                number: true,
                length: 2,
                onChanged: checkActive,
              ),
              const SizedBox(height: 27),
              Row(
                children: [
                  const SizedBox(width: 15),
                  Column(
                    children: [
                      const TextM('Date', fontSize: 20),
                      const SizedBox(height: 14),
                      TxtField(
                        controller: controller5,
                        hintText: '00.00.0000',
                        datePicker: true,
                        prefix: false,
                        width: 150,
                        onChanged: checkActive,
                      ),
                    ],
                  ),
                  const Spacer(),
                  Column(
                    children: [
                      const TextM('Time', fontSize: 20),
                      const SizedBox(height: 14),
                      TxtField(
                        controller: controller6,
                        hintText: '00:00',
                        timePicker: true,
                        width: 150,
                        onChanged: checkActive,
                      ),
                    ],
                  ),
                  const SizedBox(width: 15),
                ],
              ),
              const SizedBox(height: 27),
              const Row(
                children: [
                  SizedBox(width: 15),
                  Column(
                    children: [
                      TextM('Rating team one', fontSize: 20),
                      SizedBox(height: 14),
                      // star
                    ],
                  ),
                  Spacer(),
                  Column(
                    children: [
                      TextM('Rating team two', fontSize: 20),
                      SizedBox(height: 14),
                      // star
                    ],
                  ),
                  SizedBox(width: 15),
                ],
              ),
              const SizedBox(height: 27),
              PrimaryButton(
                title: 'Save',
                onPressed: onSave,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
