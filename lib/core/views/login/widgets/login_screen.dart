import 'package:flutter/material.dart';
import 'package:testing_10/common/extensions/context/context_ext.dart';
import 'package:testing_10/common/widgets/baseLayout/base_layout.dart';
import 'package:testing_10/common/widgets/inputFields/input_fields.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  //----------------------->
  //-----> variables
  //----------------------->
  final emailTextController = TextEditingController();

  //----------------------->
  //-----> functions
  //----------------------->
  String? emailValidator(String? value) {
    if (value == null || value.isEmpty) {
      return "Please enter your email or username";
    }
    return null;
  }

  //----------------------->
  //-----> build
  //----------------------->
  @override
  Widget build(BuildContext context) {
    return BaseLayout(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          context.topPadding,
          InputFields(
            hintText: "Username or Email",
            validator: emailValidator,
            textEditingController: emailTextController,
          ),
        ],
      ),
    );
  }
}
