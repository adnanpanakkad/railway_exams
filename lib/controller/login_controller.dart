import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:railway_exams/screens/home_screen.dart';
import 'package:railway_exams/widgets/home/bottom_bar.dart';
import 'package:railway_exams/widgets/login/custom_snackbar.dart';

class LoginController extends GetxController {
  final userController = TextEditingController();
  final passwordController = TextEditingController();
  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  // Login Function
  Future<void> login(String username, String password) async {
    if (loginFormKey.currentState!.validate()) {
      if (username == 'user' && password == '1234') {
        CustomSnackbar.show(
          title: 'Success',
          description: 'Login Successful!',
          backgroundColor: Colors.green.shade600,
          icon: const Icon(
            Icons.check_circle,
            color: Colors.white,
          ),
        );

        // Navigate to home screen or desired screen
        Get.offAll(() => BottomBarWithIndicator());
      } else {
        CustomSnackbar.show(
          title: 'Error',
          description: 'Invalid username or password',
          backgroundColor: Colors.red.shade600,
          icon: const Icon(
            Icons.cancel_outlined,
            color: Colors.white,
          ),
        );
      }
    } else {
      CustomSnackbar.show(
        title: 'Error',
        description: 'Please enter valid credentials',
        backgroundColor: Colors.red.shade600,
        icon: const Icon(
          Icons.cancel_outlined,
          color: Colors.white,
        ),
      );
    }
  }

  // Password Validator
  String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter a password';
    } else if (value.length < 4) {
      return 'Password must be at least 4 characters';
    }
    return null;
  }

  // user Field Validator
  String? textFieldValidation(String? value) {
    if (value == null || value.isEmpty) {
      return "Please enter a username";
    }
    return null;
  }

  @override
  void onClose() {
    userController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}
