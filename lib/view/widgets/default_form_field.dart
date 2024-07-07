import 'package:flutter/material.dart';

class DefaultFormField extends StatelessWidget {
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final VoidCallback? onTap;
  final String? labelText;
  final TextStyle? labelStyle;
  final TextInputType keyboardType;
  final void Function(String)? onFieldSubmitted;
  final void Function()? onEditingComplete;
  final void Function(String)? onChanged;
  final bool obscureText;
  final bool enabled;
  final MouseCursor? mouseCursor;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? initialValue;
  final String? hintText;
  final String? suffixText;
  final TextStyle? suffixTextStyle;
  final Color? backgroundColor;
  final Color? textColor;
  final TextStyle? hintStyle;
  // final Color? labelColor;
  final Color? cursorColor;
  final Radius? cursorRadius;
  final Decoration? containerDecoration;
  final double? containerHeight;
  final int? maxLines;
  final EdgeInsetsGeometry? containerPadding;
  final EdgeInsetsGeometry? containerMargin;
  final InputBorder? inputBorder;
  final InputBorder? inputEnabledBorder;
  final InputBorder? inputFocusedBorder;
  final InputBorder? inputDisabledBorder;
  final EdgeInsetsGeometry? contentPadding;
  final AlignmentGeometry? containerAlignment;
  final BoxConstraints? suffixIconConstraints;
  final bool readOnly;
  final int? maxLength;
  final TextDirection? textDirection;
  final TextAlign textAlign;
  final TextInputAction textInputAction;
  final Widget? label;
  final double? containerWidth;

  const DefaultFormField({
    super.key,
    required this.controller,
    this.label,
    this.containerWidth,
    this.containerMargin,
    this.mouseCursor,
    this.validator,
    this.hintStyle,
    this.onTap,
    this.labelText,
    this.labelStyle,
    required this.keyboardType,
    this.onFieldSubmitted,
    this.onEditingComplete,
    this.onChanged,
    this.obscureText = false,
    this.prefixIcon,
    this.suffixIcon,
    this.initialValue,
    this.hintText,
    this.backgroundColor,
    this.containerHeight,
    this.containerDecoration,
    this.maxLines,
    this.enabled = true,
    this.inputBorder =
    const OutlineInputBorder(
        borderSide: BorderSide.none),
    this.inputEnabledBorder,
    this.inputFocusedBorder,
    this.inputDisabledBorder,
    this.containerPadding,
    this.textColor,

    // this.labelColor = ,
    this.contentPadding,
    this.containerAlignment,
    this.suffixText,
    this.suffixTextStyle,
    this.suffixIconConstraints,
    this.readOnly = false,
    this.cursorColor,
    this.cursorRadius,
    this.maxLength,
    this.textDirection = TextDirection.ltr,
    this.textAlign = TextAlign.start,
    this.textInputAction =TextInputAction.next,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: containerMargin,
      alignment: containerAlignment,
      height: containerHeight,
      width: containerWidth,
      padding: containerPadding,
      decoration:
      containerDecoration,
      child: TextFormField(
        maxLength: maxLength,
        readOnly: readOnly,
        mouseCursor:mouseCursor ,
        cursorColor: cursorColor,
        cursorRadius:cursorRadius ,
        enabled: enabled,
        textAlignVertical: TextAlignVertical.center,
        textAlign: textAlign,
        maxLines: maxLines,
        textDirection: textDirection,
        initialValue: initialValue,
        controller: controller,
        validator: validator,
        keyboardType: keyboardType,
        onFieldSubmitted: onFieldSubmitted,
        onEditingComplete: onEditingComplete,
        onChanged: onChanged,
        onTap: onTap,
        obscureText: obscureText,
        style: TextStyle(
          color: textColor,
        ),
        decoration: InputDecoration(
          counterText: '',
          suffixStyle: suffixTextStyle,
          suffixText: suffixText,
          contentPadding: contentPadding,
          isDense: true,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIconConstraints: suffixIconConstraints,
          // labelStyle: Theme.of(context).textTheme.caption!.copyWith(
          //     // color: labelColor,
          //     )

          labelText: labelText,
          labelStyle:labelStyle ,
          label: label ,
          border: inputBorder,
          enabledBorder: inputEnabledBorder,
          disabledBorder: inputDisabledBorder,
          focusedBorder: inputFocusedBorder,
          hintText: hintText,
          hintStyle: hintStyle,
          hintTextDirection: TextDirection.ltr,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
        ),
      ),
    );
  }
}
