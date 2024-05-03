import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:navigation_for_practice/utils/sizes.dart';

import '../../utils/colors.dart';
import '../../utils/text_theme.dart';
import '../../widgets/button_widget.dart';
import '../bottom_navigation/bottom_navigation.dart';
import '../phone/phone_screen.dart';

class OnBoardingScreen extends StatelessWidget {
  static const routeName = '/';
  static const pageName = '/on-boarding';

  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            const Image(
              height: 600,
              width: 375,
              fit: BoxFit.cover,
              colorBlendMode: BlendMode.srcOver,
              color: AppColor.onBoard,
              image: AssetImage(
                'assets/images/on_board.gif',
              ),
            ),
            Positioned(
              right: 0,
              bottom: 168,
              child: Container(
                height: 146,
                width: 269,
                decoration: BoxDecoration(
                    color: AppColor.secondary.withOpacity(0.6),
                    borderRadius:
                        const BorderRadius.only(topLeft: Radius.circular(100))),
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                height: 250,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                  gradient: LinearGradient(
                    colors: [
                      AppColor.primaryDark,
                      AppColor.primaryLight,
                    ],
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                    stops: [0, 1],
                  ),
                ),
                padding: const EdgeInsets.only(top: 27, bottom: 40),
                child: Column(
                  children: [
                    RichText(
                      text: TextSpan(
                        text: 'My',
                        style: AppTextTheme.bigHeading(AppColor.secondary)
                            .copyWith(letterSpacing: 1.5),
                        children: [
                          TextSpan(
                              text: 'Shop',
                              style: AppTextTheme.bigHeading(
                                  AppColor.onSecondary)),
                        ],
                      ),
                    ),
                    23.0.verticalSpace,
                    Text('Electronic Smart Commerce',
                        style: AppTextTheme.regular14(AppColor.onSecondary)),
                    SizesExtension(32).verticalSpace,
                    SizedBox(
                      height: 48,
                      width: 239,
                      child: ButtonWidget(
                        btnClick: () => context.go(
                          BottomNavigationScreen.routeName,
                          extra: '0334-2064807',
                        ),
                        btnText: 'Get Started',
                        borderRadius: 10,
                        textStyle: AppTextTheme.bold17(AppColor.onSecondary),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
