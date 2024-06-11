import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ReusableTextFormField extends StatelessWidget {
  const ReusableTextFormField({
    super.key,
    this.controller,
    this.autocorrect,
    this.autofocus,
    this.validator,
    this.hintText,
    this.maxLength,
    this.border,
    this.maxLine,
    this.alignLabelWithHint,
    this.constraints,
    this.contentPadding,
    this.counter,
    this.counterStyle,
    this.counterText,
    this.disabledBorder,
    this.enabled,
    this.suffix,
    this.suffixIcon,
    this.prefix,
    this.prefixIcon,
    this.filled,
    this.filledColor,
    this.obsecureText,
    this.obscuringCharacter,
    this.minLines,
    this.hintStyle,
    this.color,
    this.fontSize,
    this.fontWeight,
    this.borderColor,
    this.keyboardType,
    this.inputFormatters,
    this.IsEditable = true,
  });

  final bool? IsEditable;
  final TextEditingController? controller;
  final bool? autocorrect;
  final bool? autofocus;
  final String? Function(String?)? validator;
  final String? hintText;

  final int? maxLength;
  final InputBorder? border;
  final int? maxLine;
  final bool? alignLabelWithHint;
  final BoxConstraints? constraints;
  final EdgeInsetsGeometry? contentPadding;
  final Widget? counter;
  final TextStyle? counterStyle;
  final String? counterText;
  final InputBorder? disabledBorder;
  final bool? enabled;
  final String? suffix;
  final Widget? suffixIcon;
  final String? prefix;
  final Widget? prefixIcon;
  final bool? filled;
  final Color? filledColor;
  final bool? obsecureText;
  final String? obscuringCharacter;
  final int? minLines;
  final TextStyle? hintStyle;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? borderColor;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;

  @override
  Widget build(BuildContext context) {
    return
        TextFormField(
          
      controller: controller,
      keyboardType: keyboardType ?? TextInputType.emailAddress,
      inputFormatters: inputFormatters,
      validator: validator,
      obscureText: obsecureText ?? false,
      obscuringCharacter: obscuringCharacter ?? "*",
      decoration: InputDecoration(
        
        hintText: hintText ?? "",
        hintStyle: TextStyle(
                color: color ?? Theme.of(context).textTheme.displaySmall?.color,
                fontSize: fontSize ?? 15,
                fontWeight: fontWeight ?? FontWeight.normal)
            .merge(hintStyle),
        suffix: Text(suffix ?? " "),
        suffixIcon: suffixIcon,
        prefix: Text(prefix ?? ""),
        prefixIcon: prefixIcon,
        filled: filled ?? false,
        fillColor: filledColor,
        border: border ??
            OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
        alignLabelWithHint: alignLabelWithHint,
        constraints: constraints,
        contentPadding: contentPadding,
        counter: counter,
        counterStyle: counterStyle,
        counterText: counterText,
        disabledBorder: disabledBorder,
        enabled: enabled ?? true,
      ),
      minLines: minLines,
      maxLength: maxLength,
      maxLines: maxLine,
      autocorrect: autocorrect ?? true,
      autofocus: autofocus ?? false,
    );
    // : TextFormField(
    //   enabled: false,

    //     decoration: InputDecoration(
    //       hintText: hintText,
    //         fillColor: Colors.grey, filled: true),
    //   );
  }
}
