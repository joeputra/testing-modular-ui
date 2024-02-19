import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modular_ui/modular_ui.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Allo"),
      ),
      body: SingleChildScrollView(
          child: Center(
        child: Column(
          children: [
            MUIOutlinedButton(
                text: 'Outlined Button',
                onPressed: () {
                  Get.back();
                }),
            const SizedBox(height: 16),
            MUIGradientButton(
              text: 'Gradient Button',
              onPressed: () {},
              bgGradient: const LinearGradient(
                colors: [Color(0xff5a44fd), Color(0xff1c2c7d)],
                stops: [0.25, 0.75],
                begin: Alignment.bottomRight,
                end: Alignment.topLeft,
              ),
              boxShadows: [
                BoxShadow(
                  color: const Color.fromARGB(255, 0, 15, 110).withOpacity(1),
                  offset: const Offset(-8, -1),
                  blurRadius: 50,
                  spreadRadius: -1,
                ),
              ],
            ),
            const SizedBox(height: 16),
            MUILoadingButton(
              text: 'Register Now!',
              onPressed: () async {
                await Future.delayed(const Duration(milliseconds: 1000));
              },
              loadingStateText: 'Please wait',
            ),
            const SizedBox(height: 16),
            MUISecondaryButton(text: 'Secondary Button', onPressed: () {}),
            const SizedBox(height: 16),
            MUISecondaryOutlinedButton(
              text: 'Secondary Outlined Button',
              onPressed: () {},
              bgColor: Colors.white,
              borderColor: Colors.grey.shade400,
            ),
            const SizedBox(height: 16),
            MUITextButton(
              text: "Text Button",
              onPressed: () {},
            ),
            const SizedBox(height: 16),
            MUIPrimaryBlockButton(
                text: 'Primary Block Button', onPressed: () {}),
            const SizedBox(height: 16),
            MUISecondaryBlockButton(
                text: 'Secondary Block Button', onPressed: () {}),
            const SizedBox(height: 16),
            MUILoadingBlockButton(
                text: 'Loading Block Button',
                loadingStateText: 'Please wait..',
                onPressed: () async {
                  await Future.delayed(const Duration(milliseconds: 1000));
                }),
            const SizedBox(height: 16),
            MUIGradientBlockButton(
              text: 'Gradient Block Button',
              onPressed: () {},
              bgGradient: const LinearGradient(
                colors: [Color(0xff5a44fd), Color(0xff1c2c7d)],
                stops: [0.25, 0.75],
                begin: Alignment.bottomRight,
                end: Alignment.topLeft,
              ),
              boxShadows: [
                BoxShadow(
                  color: const Color.fromARGB(255, 0, 15, 110).withOpacity(1),
                  offset: const Offset(-8, -1),
                  blurRadius: 50,
                  spreadRadius: -1,
                ),
              ],
            ),
            const SizedBox(height: 16),
            MUITextBlockButton(text: 'Text Block Button', onPressed: () {}),
            const SizedBox(height: 16),
            MUIOutlinedBlockButton(
                text: 'Outlined Block Button', onPressed: () {}),
            const SizedBox(height: 16),
          ],
        ),
      )),
    );
  }
}
