import 'package:flutter/material.dart';
import 'package:sparkcart/constants.dart';
import 'package:sparkcart/view/widgets/custom_text.dart';
import '../widgets/custom_text_form_field.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
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
                  color: Colors.green,
                ),
              ],
            ),
            SizedBox(height: 10),
            CustomText(
              text: "Sign in to Continue",
              color: Colors.grey,
            ),
            SizedBox(height: 40),
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}
