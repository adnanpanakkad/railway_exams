import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:railway_exams/controller/login_controller.dart';
import 'package:railway_exams/widgets/login/custom_button.dart';
import 'package:railway_exams/widgets/login/custom_textfeild.dart';

class LoginScreen extends StatelessWidget {
  LoginController loginController = Get.put(LoginController());

  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;

    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        padding: EdgeInsets.only(
            top: height * 0.2, left: width * 0.05, right: width * 0.05),
        children: [
          // Top Image
          Container(
            height: height * 0.25,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/unacademy.logo.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: height * 0.03),
          // Login Form
          Form(
            key: loginController.loginFormKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTextfield(
                  labelText: 'Username',
                  hintText: 'Enter your username',
                  controller: loginController.userController,
                  validation: (value) =>
                      loginController.textFieldValidation(value),
                ),
                SizedBox(height: height * 0.02),
                CustomTextfield(
                  labelText: 'Password',
                  hintText: 'Enter your password',
                  controller: loginController.passwordController,
                  validation: (value) =>
                      loginController.validatePassword(value),
                ),
                SizedBox(height: height * 0.06),
                SizedBox(
                  height: height * 0.07,
                  width: double.infinity,
                  child: CustomButton(
                    text: 'Login',
                    onTap: () {
                      loginController.login(
                          loginController.userController.text.trim(),
                          loginController.passwordController.text.trim());
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
