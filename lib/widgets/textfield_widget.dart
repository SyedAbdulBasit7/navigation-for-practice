import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatelessWidget {
  final String? Function(String?)? validator;
  final TextInputAction? textInputAction;
  final TextStyle? textStyle;
  final String? labelText;
  final double? labelFontSize;
  final Color? labelColor;
  final double? borderRadius;
  final TextEditingController? controller;
  // final Function(String?)? onSaved; ////
  final bool? obscureText;
  final TextInputType? textInputType;
  final Color? fillColor;
  final Color? borderColor;
  final double? vcontentPadding;
  final double? hcontentPadding;
  final String? hintText;
  final double? hintFontSize;
  final Color? hintColor;
  final double? fborderRadius;
  final Color? fborderColor;
  final int? maxLine;
  final int? minLine;
  final Color? cursorColor;

  TextFormFieldWidget(
      {this.validator,
      this.textInputAction,
      this.textStyle,
      this.labelText,
      this.labelFontSize,
      this.labelColor,
      this.borderRadius,
      this.controller,
      // this.onSaved,
      this.obscureText,
      this.textInputType,
      this.fillColor,
      this.borderColor,
      this.vcontentPadding,
      this.hcontentPadding,
      this.hintText,
      this.hintFontSize,
      this.hintColor,
      this.fborderColor,
      this.fborderRadius,
      this.maxLine,
      this.minLine,
      this.cursorColor});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator!,
      maxLines: maxLine != null ? maxLine : 1,
      minLines: minLine != null ? minLine : 1,
      obscureText: obscureText!,
      textInputAction: textInputAction,
      keyboardType: textInputType,
      style: textStyle,
      decoration: InputDecoration(
        fillColor: fillColor,
        filled: true,
        hintText: hintText,
        hintStyle: TextStyle(
          fontSize: hintFontSize,
          color: hintColor,
        ),
        labelText: labelText,
        labelStyle: TextStyle(
          fontSize: labelFontSize,
          color: labelColor,
        ),
        contentPadding: EdgeInsets.symmetric(
            vertical: vcontentPadding!, horizontal: hcontentPadding!),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius!),
          borderSide: BorderSide(color: borderColor!, width: 0.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(fborderRadius!),
          borderSide: BorderSide(color: fborderColor!, width: 0.0),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius!),
          borderSide: BorderSide(color: borderColor!, width: 0.0),
        ),
      ),
      controller: controller,
      cursorColor: cursorColor,
      // onSaved: onSaved,
    );
  }
}
