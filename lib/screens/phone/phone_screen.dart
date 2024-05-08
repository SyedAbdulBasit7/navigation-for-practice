import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:navigation_for_practice/screens/skip.dart';
import 'package:navigation_for_practice/screens/verification_code.dart';
import 'package:navigation_for_practice/widgets/textfield_widget.dart';

import '../../utils/colors.dart';
import '../../utils/text_theme.dart';
import '../../widgets/button_widget.dart';
import '../bottom_navigation/bottom_navigation.dart';

class PhoneScreen extends StatefulWidget {
  static const routeName = 'phone-screen';
  static const routePath = routeName;

  final String? extra;
  final String? phoneId;

  const PhoneScreen({super.key, this.extra, this.phoneId});

  @override
  State<PhoneScreen> createState() => _PhoneScreenState();
}

class _PhoneScreenState extends State<PhoneScreen> {
  final formKey = GlobalKey<FormState>();

  late final TextEditingController phoneController;

  @override
  void initState() {
    phoneController = TextEditingController(text: widget.extra);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Phone: ${widget.phoneId}'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                height: 221,
                width: 375,
                padding: const EdgeInsets.only(left: 24),
                decoration: const BoxDecoration(
                  borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(260)),
                  gradient: LinearGradient(
                    colors: [
                      AppColor.primaryLight,
                      AppColor.primaryDark,
                    ],
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                    stops: [0, 1],
                  ),
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'What Is Your Phone\nNumber',
                    style: AppTextTheme.bold25(AppColor.onSecondary),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(
                  top: 33,
                  left: 24,
                  right: 24,
                ),
                child: Column(
                  children: [
                    Text(
                      'Please enter your phone number to verify your account',
                      style: AppTextTheme.regular17(AppColor.black),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Form(
                      key: formKey,
                      child: Column(
                        children: [
                          SizedBox(
                            // height: 64.flexibleHeight,
                            width: 327,
                            child: TextFormFieldWidget(
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Enter a name!';
                                }
                                return null;
                              },
                              textStyle:
                                  TextStyle(fontSize: 14, color: Colors.black),
                              textInputAction: TextInputAction.next,
                              textInputType: TextInputType.name,
                              hintText: 'Name',
                              hintColor: AppColor.textGray,
                              borderRadius: 10,
                              obscureText: false,
                              fillColor: AppColor.onSecondary,
                              borderColor: Colors.black54,
                              vcontentPadding: 20,
                              hcontentPadding: 8,
                              fborderRadius: 10,
                              fborderColor: AppColor.lineGray,
                              cursorColor: AppColor.primaryLight,
                              controller: phoneController,
                            ),
                          ),
                          const SizedBox(
                            height: 24,
                          ),
                          SizedBox(
                            height: 64,
                            width: 327,
                            child: ButtonWidget(
                              btnClick: () {
                                context.goNamed(VerificationScreen.routePath);
                              },
                              btnText: 'Send Verification Code',
                              borderRadius: 10,
                              textStyle:
                                  AppTextTheme.bold17(AppColor.onSecondary),
                            ),
                          ),
                          const SizedBox(height: 8),
                          TextButton(
                            onPressed: () =>
                                context.goNamed(SkipScreen.routePath),
                            child: Text(
                              'Skip',
                              style: AppTextTheme.bold17(AppColor.textGray),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
