import 'package:flutter/material.dart';
import 'package:testing_10/common/extensions/context/context_ext.dart';

class InputFields extends StatelessWidget {
  const InputFields({
    super.key,
    this.margin,
    this.suffixIcon,
    this.prefixIcon,
    this.hintText,
    this.borderRadius,
    this.padding,
    this.validator,
    this.textEditingController,
    this.obscureText,
  });

  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final String? hintText;
  final double? borderRadius;
  final String? Function(String? value)? validator;
  final TextEditingController? textEditingController;
  final bool? obscureText;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin ?? const EdgeInsets.symmetric(horizontal: 10),
      padding: padding ?? const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.white30,
        borderRadius: BorderRadius.circular(borderRadius ?? 30),
      ),
      child: TextFormField(
        controller: textEditingController,
        maxLines: 1,
        cursorColor: Colors.white,
        obscureText: obscureText ?? false,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
        decoration: InputDecoration(
          enabledBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          suffix: suffixIcon,
          prefix: prefixIcon,
          hintText: hintText ?? "",
          hintStyle: const TextStyle(
            color: Colors.white,
          ),
        ),
        validator: validator,
      ),
    );
  }
}
