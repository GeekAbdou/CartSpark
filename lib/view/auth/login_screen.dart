import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:sparkcart/constants.dart';
import 'package:sparkcart/core/view_model/auth_view_model.dart';
import 'package:sparkcart/view/widgets/custom_social_button.dart';
import 'package:sparkcart/view/widgets/custom_text.dart';
import '../widgets/custom_text_form_field.dart';
import '../widgets/custom_button.dart';
//import 'package:firebase_core/firebase_core.dart';

class LoginScreen extends GetWidget<AuthViewModel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.grey.shade50,
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 50,
          left: 20,
          right: 20,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: "Welcome,",
                  fontSize: 30,
                ),
                CustomText(
                  text: "SignUp",
                  fontSize: 18,
                  color: primaryColor,
                ),
              ],
            ),
            SizedBox(height: 10),
            CustomText(
              text: "Sign in to Continue",
              color: Colors.grey,
            ),
            SizedBox(height: 50),
            Column(
              children: [
                CustomTextFormField(
                  text: "Email",
                  hint: "Ali@Gmail.com",
                  onSave: (_) {},
                  validator: (_) {},
                ),
                SizedBox(height: 40),
                CustomTextFormField(
                  text: "Password",
                  hint: "**********",
                  onSave: (_) {},
                  validator: (_) {},
                ),
                SizedBox(height: 10),
                CustomText(
                  text: "Forgot Password?",
                  alignment: Alignment.topRight,
                ),
                SizedBox(height: 30),
                CustomButton(
                  onPress: () {},
                  text: "SignUp",
                  padding: 18,
                ),
                SizedBox(height: 40),
                CustomText(
                  text: "-OR-",
                  alignment: Alignment.center,
                  fontSize: 20,
                ),
                SizedBox(height: 60),
                CustomButtonSocial(
                  text: "Sign In with Facebook",
                  imageName: 'assets/images/facebook.png',
                  onPress: () {
                    controller.facebookSignin();
                  },
                ),
                SizedBox(height: 20),
                CustomButtonSocial(
                  text: "Sign In with Google",
                  imageName: 'assets/images/google.png',
                  onPress: () {
                    controller.googleSignIn();
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
