import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:modular_ui/modular_ui.dart';
import 'package:notif_google/views/second_page.dart';
import 'package:notif_google/views/third_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
              MUIPrimaryCard(
                title: 'This is MUIPrimaryCard Title',
                description: 'This is MUIPrimaryCardTitle',
                image: Image.network(
                  'https://images.unsplash.com/photo-1706527048236-c5e9183b9e8d?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxM3x8fGVufDB8fHx8fA%3D%3D',
                  fit: BoxFit.cover,
                ),
                buttons: [
                  MUIPrimaryButton(
                      text: 'Button',
                      onPressed: () {
                        Get.to(() => const ThirdPage());
                      })
                ],
              ),
              const SizedBox(height: 16),
              MUIBlogCard(
                title: 'This is MUIBlogCard Title',
                description: 'This is MUIBlogCardTitle',
                onBlogCardPressed: () {},
                image: Image.network(
                    'https://images.unsplash.com/photo-1682687219570-4c596363fd96?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwzNnx8fGVufDB8fHx8fA%3D%3D',
                    fit: BoxFit.cover),
                date: '12-Jan-2024',
                circularAvatarImages: const [
                  'https://images.unsplash.com/photo-1580489944761-15a19d654956?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1061&q=80',
                  'https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1480&q=80',
                ],
              ),
              const SizedBox(height: 16),
              MUISimpleCard(
                title: 'UI/UX Review Check',
                description:
                    'The place is close to Barceloneta Beach and bus stop just 2 min by walk and near to "Naviglio" where you can enjoy the main night life in Barcelona',
                buttons: [
                  MUIPrimaryButton(
                    text: 'Read More',
                    onPressed: () {},
                  ),
                ],
              ),
              const SizedBox(height: 16),
              MUIPricingCard(
                title: "Standard",
                button: MUILoadingBlockButton(
                    bgColor: Colors.white,
                    textColor: Colors.black,
                    loadingStateText: 'Purchasing',
                    loadingStateTextColor: Colors.black,
                    text: 'Buy Now',
                    onPressed: () async {
                      await Future.delayed(const Duration(milliseconds: 500));
                    }),
                duration: MUIPricingDuration.monthly,
                currency: MUIPricingCurrency.dollar,
                bgColor: const Color(0xFF37373C),
                amount: 29,
                items: const [
                  MUIPricingCardItems(
                      icon: Icon(
                        Icons.check_box_rounded,
                        color: Colors.white,
                      ),
                      title: " 5 team members"),
                  MUIPricingCardItems(
                      icon: Icon(
                        Icons.check_box_rounded,
                        color: Colors.white,
                      ),
                      title: "200+ components"),
                  MUIPricingCardItems(
                      icon: Icon(
                        Icons.check_box_rounded,
                        color: Colors.white,
                      ),
                      title: "40+ built-in pages"),
                  MUIPricingCardItems(
                      icon: Icon(
                        Icons.check_box_rounded,
                        color: Colors.white,
                      ),
                      title: "1 year free updates"),
                  MUIPricingCardItems(
                      icon: Icon(
                        Icons.check_box_rounded,
                        color: Colors.white,
                      ),
                      title: "Life time technical support"),
                ],
              ),
              const SizedBox(height: 16),
              MUIProfileCard(
                name: 'Utkarsh Shrivastava',
                image: Image.network('https://iili.io/JllFe19.jpg',
                    fit: BoxFit.cover),
                designation: 'Flutter Developer',
              ),
              const SizedBox(height: 16),
              MUISignInCard(
                emailController: TextEditingController(),
                passwordController: TextEditingController(),
                onSignInPressed: () async {
                  await Future.delayed(const Duration(milliseconds: 500));
                },
                onRegisterNow: () {},
                authButtons: [
                  MUISecondaryOutlinedButton(
                      text: ' Google ',
                      onPressed: () {},
                      bgColor: Colors.black,
                      textColor: Colors.white,
                      borderColor: Colors.grey.shade900,
                      leadingIcon: FontAwesomeIcons.google,
                      iconColor: Colors.white),
                  MUISecondaryOutlinedButton(
                      text: ' Github ',
                      onPressed: () {},
                      bgColor: Colors.black,
                      textColor: Colors.white,
                      borderColor: Colors.grey.shade900,
                      leadingIcon: FontAwesomeIcons.github,
                      iconColor: Colors.white),
                ],
              ),
              const SizedBox(height: 16),
              MUISignUpCard(
                emailController: TextEditingController(),
                passwordController: TextEditingController(),
                confirmPasswordController: TextEditingController(),
                onSignUpPressed: () async {
                  await Future.delayed(const Duration(milliseconds: 500));
                },
                onLogInNowPressed: () {},
                authButtons: [
                  MUISecondaryOutlinedButton(
                      text: ' Google ',
                      onPressed: () {},
                      bgColor: Colors.black,
                      textColor: Colors.white,
                      borderColor: Colors.grey.shade900,
                      leadingIcon: FontAwesomeIcons.google,
                      iconColor: Colors.white),
                  MUISecondaryOutlinedButton(
                      text: ' Github ',
                      onPressed: () {},
                      bgColor: Colors.black,
                      textColor: Colors.white,
                      borderColor: Colors.grey.shade900,
                      leadingIcon: FontAwesomeIcons.github,
                      iconColor: Colors.white),
                ],
              ),
              const SizedBox(height: 16),
              MUIPrimaryButton(
                text: 'Next Page',
                onPressed: () {
                  Get.to(() => const SecondPage());
                },
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
